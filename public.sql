/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : PostgreSQL
 Source Server Version : 90608
 Source Host           : localhost:5432
 Source Catalog        : postgres
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90608
 File Encoding         : 65001

 Date: 17/04/2018 16:49:55
*/


-- ----------------------------
-- Sequence structure for ALERT_SUBSCRIBER_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ALERT_SUBSCRIBER_ID_seq";
CREATE SEQUENCE "public"."ALERT_SUBSCRIBER_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq";
CREATE SEQUENCE "public"."APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq";
CREATE SEQUENCE "public"."APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for APP_CLIENT_MENU_CLIENT_MENU_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."APP_CLIENT_MENU_CLIENT_MENU_ID_seq";
CREATE SEQUENCE "public"."APP_CLIENT_MENU_CLIENT_MENU_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for APP_CLIENT_SITE_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."APP_CLIENT_SITE_ID_seq";
CREATE SEQUENCE "public"."APP_CLIENT_SITE_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for APP_CLIENT_TEMPLATE_CLIENT_TEMPLATE_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."APP_CLIENT_TEMPLATE_CLIENT_TEMPLATE_ID_seq";
CREATE SEQUENCE "public"."APP_CLIENT_TEMPLATE_CLIENT_TEMPLATE_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for APP_CLIENT_TEMPLATE_COMPONENT_TEMPLATE_COMPONENT_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."APP_CLIENT_TEMPLATE_COMPONENT_TEMPLATE_COMPONENT_ID_seq";
CREATE SEQUENCE "public"."APP_CLIENT_TEMPLATE_COMPONENT_TEMPLATE_COMPONENT_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for APP_CLIENT_USER_CLIENT_USER_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."APP_CLIENT_USER_CLIENT_USER_ID_seq";
CREATE SEQUENCE "public"."APP_CLIENT_USER_CLIENT_USER_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq";
CREATE SEQUENCE "public"."APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for APP_FUNCTION_ACCESS_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."APP_FUNCTION_ACCESS_ID_seq";
CREATE SEQUENCE "public"."APP_FUNCTION_ACCESS_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for APP_LOG_CLIENT_LOG_CLIENT_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."APP_LOG_CLIENT_LOG_CLIENT_ID_seq";
CREATE SEQUENCE "public"."APP_LOG_CLIENT_LOG_CLIENT_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for APP_LOG_LOG_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."APP_LOG_LOG_ID_seq";
CREATE SEQUENCE "public"."APP_LOG_LOG_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for APP_MENU_MENU_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."APP_MENU_MENU_ID_seq";
CREATE SEQUENCE "public"."APP_MENU_MENU_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for APP_ROUTE_ROUTE_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."APP_ROUTE_ROUTE_ID_seq";
CREATE SEQUENCE "public"."APP_ROUTE_ROUTE_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for APP_SETTING_SETTING_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."APP_SETTING_SETTING_ID_seq";
CREATE SEQUENCE "public"."APP_SETTING_SETTING_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for APP_TEMPLATE_ACCESS_TEMPLATE_ACCESS_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."APP_TEMPLATE_ACCESS_TEMPLATE_ACCESS_ID_seq";
CREATE SEQUENCE "public"."APP_TEMPLATE_ACCESS_TEMPLATE_ACCESS_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for APP_USER_GROUP_GROUP_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."APP_USER_GROUP_GROUP_ID_seq";
CREATE SEQUENCE "public"."APP_USER_GROUP_GROUP_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for APP_USER_USER_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."APP_USER_USER_ID_seq";
CREATE SEQUENCE "public"."APP_USER_USER_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq";
CREATE SEQUENCE "public"."CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for FILE_MANAGER_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."FILE_MANAGER_ID_seq";
CREATE SEQUENCE "public"."FILE_MANAGER_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for FORM_ENTRY_FIELD_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."FORM_ENTRY_FIELD_ID_seq";
CREATE SEQUENCE "public"."FORM_ENTRY_FIELD_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for FORM_ENTRY_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."FORM_ENTRY_ID_seq";
CREATE SEQUENCE "public"."FORM_ENTRY_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for HEADER_INFO_CLIENT_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."HEADER_INFO_CLIENT_ID_seq";
CREATE SEQUENCE "public"."HEADER_INFO_CLIENT_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for KOMPONEN_HTML_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."KOMPONEN_HTML_ID_seq";
CREATE SEQUENCE "public"."KOMPONEN_HTML_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for KOMPONEN_JSON_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."KOMPONEN_JSON_ID_seq";
CREATE SEQUENCE "public"."KOMPONEN_JSON_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for MAP_POINT_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MAP_POINT_ID_seq";
CREATE SEQUENCE "public"."MAP_POINT_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_BARGE_BARGE_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_BARGE_BARGE_ID_seq";
CREATE SEQUENCE "public"."MASTER_BARGE_BARGE_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_BBM_BBM_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_BBM_BBM_ID_seq";
CREATE SEQUENCE "public"."MASTER_BBM_BBM_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_CABANG_CABANG_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_CABANG_CABANG_ID_seq";
CREATE SEQUENCE "public"."MASTER_CABANG_CABANG_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_CONTRACT_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_CONTRACT_ID_seq";
CREATE SEQUENCE "public"."MASTER_CONTRACT_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_CV_CERTIFICATE_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_CV_CERTIFICATE_ID_seq";
CREATE SEQUENCE "public"."MASTER_CV_CERTIFICATE_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 15
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_CV_EDUCATION_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_CV_EDUCATION_ID_seq";
CREATE SEQUENCE "public"."MASTER_CV_EDUCATION_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 102
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_CV_EXPERIENCE_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_CV_EXPERIENCE_ID_seq";
CREATE SEQUENCE "public"."MASTER_CV_EXPERIENCE_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 81
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_CV_HISTORY_OF_WORK_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_CV_HISTORY_OF_WORK_ID_seq";
CREATE SEQUENCE "public"."MASTER_CV_HISTORY_OF_WORK_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 70
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_CV_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_CV_ID_seq";
CREATE SEQUENCE "public"."MASTER_CV_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_CV_REGION_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_CV_REGION_ID_seq";
CREATE SEQUENCE "public"."MASTER_CV_REGION_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 80
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_ICON_MARKER_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_ICON_MARKER_ID_seq";
CREATE SEQUENCE "public"."MASTER_ICON_MARKER_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_INTERVENTION_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_INTERVENTION_ID_seq";
CREATE SEQUENCE "public"."MASTER_INTERVENTION_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_LOCATION_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_LOCATION_ID_seq";
CREATE SEQUENCE "public"."MASTER_LOCATION_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_PERSONIL_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_PERSONIL_ID_seq";
CREATE SEQUENCE "public"."MASTER_PERSONIL_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_PORT_PORT_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_PORT_PORT_ID_seq";
CREATE SEQUENCE "public"."MASTER_PORT_PORT_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_PRODUCT_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_PRODUCT_ID_seq";
CREATE SEQUENCE "public"."MASTER_PRODUCT_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_STDREF_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_STDREF_ID_seq";
CREATE SEQUENCE "public"."MASTER_STDREF_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_STD_REF_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_STD_REF_ID_seq";
CREATE SEQUENCE "public"."MASTER_STD_REF_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_TOOL_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_TOOL_ID_seq";
CREATE SEQUENCE "public"."MASTER_TOOL_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for MASTER_VESSEL_VESSEL_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."MASTER_VESSEL_VESSEL_ID_seq";
CREATE SEQUENCE "public"."MASTER_VESSEL_VESSEL_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for REF_EXP_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."REF_EXP_ID_seq";
CREATE SEQUENCE "public"."REF_EXP_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 5
CACHE 1;

-- ----------------------------
-- Sequence structure for REF_POSITION_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."REF_POSITION_ID_seq";
CREATE SEQUENCE "public"."REF_POSITION_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 6
CACHE 1;

-- ----------------------------
-- Sequence structure for REF_REGION_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."REF_REGION_ID_seq";
CREATE SEQUENCE "public"."REF_REGION_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 32
CACHE 1;

-- ----------------------------
-- Sequence structure for RUNNING_TEXT_RUNNING_TEXT_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."RUNNING_TEXT_RUNNING_TEXT_ID_seq";
CREATE SEQUENCE "public"."RUNNING_TEXT_RUNNING_TEXT_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for WA_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."WA_ID_seq";
CREATE SEQUENCE "public"."WA_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for WEBSITE_ARTICLE_CATEGORY_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."WEBSITE_ARTICLE_CATEGORY_ID_seq";
CREATE SEQUENCE "public"."WEBSITE_ARTICLE_CATEGORY_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for WEBSITE_ARTICLE_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."WEBSITE_ARTICLE_ID_seq";
CREATE SEQUENCE "public"."WEBSITE_ARTICLE_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for WEBSITE_MENU_MENU_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."WEBSITE_MENU_MENU_ID_seq";
CREATE SEQUENCE "public"."WEBSITE_MENU_MENU_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for WEBSITE_PAGE_STATIC_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."WEBSITE_PAGE_STATIC_ID_seq";
CREATE SEQUENCE "public"."WEBSITE_PAGE_STATIC_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for WEBSITE_SLIDER_DETAIL_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."WEBSITE_SLIDER_DETAIL_ID_seq";
CREATE SEQUENCE "public"."WEBSITE_SLIDER_DETAIL_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for WEBSITE_SLIDER_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."WEBSITE_SLIDER_ID_seq";
CREATE SEQUENCE "public"."WEBSITE_SLIDER_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for WEBSITE_TAG_ARTICLE_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."WEBSITE_TAG_ARTICLE_ID_seq";
CREATE SEQUENCE "public"."WEBSITE_TAG_ARTICLE_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for WEBSITE_TAG_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."WEBSITE_TAG_ID_seq";
CREATE SEQUENCE "public"."WEBSITE_TAG_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for inbox_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."inbox_ID_seq";
CREATE SEQUENCE "public"."inbox_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for outbox_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."outbox_ID_seq";
CREATE SEQUENCE "public"."outbox_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for outbox_multipart_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."outbox_multipart_ID_seq";
CREATE SEQUENCE "public"."outbox_multipart_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pbk_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pbk_ID_seq";
CREATE SEQUENCE "public"."pbk_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pbk_groups_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pbk_groups_ID_seq";
CREATE SEQUENCE "public"."pbk_groups_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pelni_info_id_info_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pelni_info_id_info_seq";
CREATE SEQUENCE "public"."pelni_info_id_info_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 3
CACHE 1;

-- ----------------------------
-- Sequence structure for pelni_info_id_info_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pelni_info_id_info_seq1";
CREATE SEQUENCE "public"."pelni_info_id_info_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sentitems_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sentitems_ID_seq";
CREATE SEQUENCE "public"."sentitems_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for ALERT_SUBSCRIBER
-- ----------------------------
DROP TABLE IF EXISTS "public"."ALERT_SUBSCRIBER";
CREATE TABLE "public"."ALERT_SUBSCRIBER" (
  "ALERT_SUBSCRIBER_ID" int4 NOT NULL DEFAULT nextval('"ALERT_SUBSCRIBER_ID_seq"'::regclass),
  "USER_ID" int4,
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default",
  "SUBSCRIBE" text COLLATE "pg_catalog"."default",
  "LAST_SEND" timestamp(6),
  "CLIENT_SITE_ID" int4
)
;

-- ----------------------------
-- Records of ALERT_SUBSCRIBER
-- ----------------------------
INSERT INTO "public"."ALERT_SUBSCRIBER" VALUES (7, 1, 0, '2018-01-02 16:55:31', NULL, NULL, NULL, NULL, NULL, 'Y', NULL, 2);
INSERT INTO "public"."ALERT_SUBSCRIBER" VALUES (9, 4, 0, '2018-01-02 17:06:41', NULL, NULL, NULL, NULL, NULL, 'Y', NULL, 2);

-- ----------------------------
-- Table structure for APP_CLIENT_ACCESS
-- ----------------------------
DROP TABLE IF EXISTS "public"."APP_CLIENT_ACCESS";
CREATE TABLE "public"."APP_CLIENT_ACCESS" (
  "ID" int4 NOT NULL DEFAULT nextval('"APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq"'::regclass),
  "NAME" text COLLATE "pg_catalog"."default",
  "READ_PRIV" int4 DEFAULT 0,
  "EDIT_PRIV" int4 DEFAULT 0,
  "DELETE_PRIV" int4 DEFAULT 0,
  "ADD_PRIV" int4 DEFAULT 0,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default",
  "MENU_ID" int4,
  "IS_DELETE" int4
)
;

-- ----------------------------
-- Records of APP_CLIENT_ACCESS
-- ----------------------------
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (1, 'Global Client', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 1, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (2, 'Global Client', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 2, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (3, 'Global Client', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 3, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (18, 'Global Client Menu', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 1, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (19, 'Global Client Menu', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 2, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (20, 'Global Client Menu', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 3, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (10, 'Client Full Control', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 1, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (11, 'Client Full Control', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 2, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (12, 'Client Full Control', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 3, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (13, 'Client Full Control', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 4, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (50, 'Coloco', 1, 0, 0, 0, NULL, '', NULL, NULL, NULL, NULL, 2, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (51, 'Coloco', 1, 0, 0, 0, NULL, '', NULL, NULL, NULL, NULL, 1, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (52, 'Coloco', 1, 0, 0, 0, NULL, '', NULL, NULL, NULL, NULL, 3, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (53, 'Coloco', 1, 0, 0, 0, NULL, '', NULL, NULL, NULL, NULL, 7, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (54, 'Pertamina', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 2, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (55, 'Pertamina', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 1, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (56, 'PLN', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 2, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (57, 'PLN', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 1, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (58, 'Pelni', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 2, 0);
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES (59, 'Pelni', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 1, 0);

-- ----------------------------
-- Table structure for APP_CLIENT_FORM_UPLOAD_DETAIL
-- ----------------------------
DROP TABLE IF EXISTS "public"."APP_CLIENT_FORM_UPLOAD_DETAIL";
CREATE TABLE "public"."APP_CLIENT_FORM_UPLOAD_DETAIL" (
  "FILE_UPLOAD_DETAIL_ID" int4 NOT NULL DEFAULT nextval('"CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq"'::regclass),
  "PATH" text COLLATE "pg_catalog"."default",
  "FILE_NAME" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default",
  "INFO_CLIENT_ID" int4
)
;

-- ----------------------------
-- Records of APP_CLIENT_FORM_UPLOAD_DETAIL
-- ----------------------------
INSERT INTO "public"."APP_CLIENT_FORM_UPLOAD_DETAIL" VALUES (4, 'uploads/client_form_file/01_FSD-PA-Phase-1-HCMS-Project-03042017-DRAFT-v0_21.doc', '01_FSD-PA-Phase-1-HCMS-Project-03042017-DRAFT-v0_21.doc', 0, NULL, NULL, NULL, NULL, NULL, NULL, 73);
INSERT INTO "public"."APP_CLIENT_FORM_UPLOAD_DETAIL" VALUES (5, 'uploads/client_form_file/template_pdf1.pdf', 'template_pdf1.pdf', 0, NULL, NULL, NULL, NULL, NULL, NULL, 73);
INSERT INTO "public"."APP_CLIENT_FORM_UPLOAD_DETAIL" VALUES (6, 'uploads/client_form_file/room111.jpeg', 'room111.jpeg', 0, NULL, NULL, NULL, NULL, NULL, NULL, 73);
INSERT INTO "public"."APP_CLIENT_FORM_UPLOAD_DETAIL" VALUES (7, 'uploads/client_form_file/<', '<', 0, NULL, NULL, NULL, NULL, NULL, NULL, 73);
INSERT INTO "public"."APP_CLIENT_FORM_UPLOAD_DETAIL" VALUES (8, 'uploads/form_entry_file/profesional1.png', 'profesional1.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, 78);
INSERT INTO "public"."APP_CLIENT_FORM_UPLOAD_DETAIL" VALUES (9, 'uploads/form_entry_file/Screenshot_from_2017-09-08_09-00-46.png', 'Screenshot_from_2017-09-08_09-00-46.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, 78);

-- ----------------------------
-- Table structure for APP_CLIENT_HEADER_ACCESS
-- ----------------------------
DROP TABLE IF EXISTS "public"."APP_CLIENT_HEADER_ACCESS";
CREATE TABLE "public"."APP_CLIENT_HEADER_ACCESS" (
  "HEADER_ACCESS_ID" int4 NOT NULL DEFAULT nextval('"APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq"'::regclass),
  "CLIENT_SITE_ID" int4,
  "MENU_ID" int4,
  "CLIENT_TEMPLATE_ID" int4,
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of APP_CLIENT_HEADER_ACCESS
-- ----------------------------
INSERT INTO "public"."APP_CLIENT_HEADER_ACCESS" VALUES (9, 2, 3, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_CLIENT_HEADER_ACCESS" VALUES (10, 3, 3, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_CLIENT_HEADER_ACCESS" VALUES (11, 1, 3, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_CLIENT_HEADER_ACCESS" VALUES (12, 5, 3, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for APP_CLIENT_MENU
-- ----------------------------
DROP TABLE IF EXISTS "public"."APP_CLIENT_MENU";
CREATE TABLE "public"."APP_CLIENT_MENU" (
  "MENU_ID" int4 NOT NULL DEFAULT nextval('"APP_CLIENT_MENU_CLIENT_MENU_ID_seq"'::regclass),
  "MENU_LEVEL" int4,
  "REFERENCE" int4,
  "TITLE" text COLLATE "pg_catalog"."default",
  "URL" text COLLATE "pg_catalog"."default",
  "REMARK" text COLLATE "pg_catalog"."default",
  "TARGET" text COLLATE "pg_catalog"."default",
  "IMAGE" text COLLATE "pg_catalog"."default",
  "WEIGHT" int4,
  "SHOW" int4,
  "HIERARCHY" int4,
  "BASICHIERARCHY" int4,
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of APP_CLIENT_MENU
-- ----------------------------
INSERT INTO "public"."APP_CLIENT_MENU" VALUES (2, 1, 0, 'Report', '/client_report', 'Client Report', '_self', '<i class="fa fa-bar-chart"></i>', 1, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_CLIENT_MENU" VALUES (1, 1, 0, 'Dashboard', '/client_dashboard', 'Dashboard', '_self', '<i class="fa fa-dashboard"></i>', 0, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_CLIENT_MENU" VALUES (3, 1, 0, 'Form', '/client_form', 'Client Form', '_self', '<i class="fa fa-pencil"></i>', 2, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_CLIENT_MENU" VALUES (7, 1, 0, 'Peta Indonesia', 'client_peta_indonesia', 'Peta Indonesia', '_self', '<i class="fa fa-globe"></i>', 0, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);

-- ----------------------------
-- Table structure for APP_CLIENT_SITE
-- ----------------------------
DROP TABLE IF EXISTS "public"."APP_CLIENT_SITE";
CREATE TABLE "public"."APP_CLIENT_SITE" (
  "CLIENT_SITE_ID" int4 NOT NULL DEFAULT nextval('"APP_CLIENT_SITE_ID_seq"'::regclass),
  "CLIENT_SITE_NAME" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default",
  "CLIENT_LOGO" text COLLATE "pg_catalog"."default",
  "CLIENT_LOGO_WIDTH" int4,
  "CLIENT_LOGO_HEIGHT" int4,
  "CLIENT_WALLPAPER" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of APP_CLIENT_SITE
-- ----------------------------
INSERT INTO "public"."APP_CLIENT_SITE" VALUES (2, 'PLN', 0, NULL, 'admin', '2017-10-16 07:31:00', NULL, NULL, NULL, 'http://localhost/uploads/file_manager/pln-logo.png', 170, 40, 'https://redkal.com/wp-content/uploads/2017/09/IMG-20170906-WA0030.jpg');
INSERT INTO "public"."APP_CLIENT_SITE" VALUES (1, 'Pertamina', 0, NULL, 'admin', '2017-10-16 07:31:00', NULL, NULL, NULL, 'http://localhost/uploads/file_manager/pertamina-logo.png', 190, 40, 'http://mediatataruang.com/wp-content/uploads/2017/08/pertamina1.jpg');
INSERT INTO "public"."APP_CLIENT_SITE" VALUES (3, 'Pelni', 0, NULL, 'admin', '2017-10-16 07:31:00', NULL, NULL, NULL, 'http://localhost/uploads/file_manager/pelni-logo.png', 180, 40, 'http://1.bp.blogspot.com/-k3DU7DtJNus/UxpjhBX7D2I/AAAAAAAAAW8/joo_nXra-yE/s1600/Cermai.jpg');

-- ----------------------------
-- Table structure for APP_CLIENT_USER
-- ----------------------------
DROP TABLE IF EXISTS "public"."APP_CLIENT_USER";
CREATE TABLE "public"."APP_CLIENT_USER" (
  "USER_ID" int4 NOT NULL DEFAULT nextval('"APP_CLIENT_USER_CLIENT_USER_ID_seq"'::regclass),
  "USERNAME" text COLLATE "pg_catalog"."default",
  "EMAIL" text COLLATE "pg_catalog"."default",
  "FIRST_NAME" text COLLATE "pg_catalog"."default",
  "LAST_NAME" text COLLATE "pg_catalog"."default",
  "PASSWORD" text COLLATE "pg_catalog"."default",
  "COUNTER" int4,
  "STATUS" text COLLATE "pg_catalog"."default",
  "REMARK" text COLLATE "pg_catalog"."default",
  "CHANGE_PASSWORD" text COLLATE "pg_catalog"."default",
  "FUNCTION_ACCESS" text COLLATE "pg_catalog"."default",
  "INQUIRY_ACCESS" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default",
  "PHONE" text COLLATE "pg_catalog"."default",
  "PHOTO" text COLLATE "pg_catalog"."default",
  "CLIENT_SITE_ID" int4
)
;

-- ----------------------------
-- Records of APP_CLIENT_USER
-- ----------------------------
INSERT INTO "public"."APP_CLIENT_USER" VALUES (2, 'PTM-12345', 'pelni@gmail.com', 'Wira', 'Widodo', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Y', '', NULL, 'Pertamina', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, '090980450455', 'employee.jpg', 1);
INSERT INTO "public"."APP_CLIENT_USER" VALUES (3, 'PNI-12345', 'indra@pln.co.id', 'indra', 'Setiawan', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Y', '', NULL, 'Pelni', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, '08795567454', 'employee1.jpg', 3);
INSERT INTO "public"."APP_CLIENT_USER" VALUES (1, 'PLN-12345', 'admin@gmail.com', 'Bp. Tubagus', '', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Y', 'Client Test', NULL, 'PLN', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, '08121076201', 'employee2.jpg', 2);
INSERT INTO "public"."APP_CLIENT_USER" VALUES (4, 'PLN-12346', 'admin@gmail.com', 'Teguh', 'Widodo', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Y', 'Client Test', NULL, 'PLN', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, '08568163177', 'employee2.jpg', 2);

-- ----------------------------
-- Table structure for APP_CLIENT_USER_GROUP
-- ----------------------------
DROP TABLE IF EXISTS "public"."APP_CLIENT_USER_GROUP";
CREATE TABLE "public"."APP_CLIENT_USER_GROUP" (
  "GROUP_ID" int4 NOT NULL DEFAULT nextval('"APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq"'::regclass),
  "GROUP_NAME" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of APP_CLIENT_USER_GROUP
-- ----------------------------
INSERT INTO "public"."APP_CLIENT_USER_GROUP" VALUES (4, 'Coloco', 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_CLIENT_USER_GROUP" VALUES (2, 'Pertamina', 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_CLIENT_USER_GROUP" VALUES (3, 'PLN', 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_CLIENT_USER_GROUP" VALUES (1, 'Pelni', 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for APP_FILE_MANAGER
-- ----------------------------
DROP TABLE IF EXISTS "public"."APP_FILE_MANAGER";
CREATE TABLE "public"."APP_FILE_MANAGER" (
  "FILE_MANAGER_ID" int4 NOT NULL DEFAULT nextval('"FILE_MANAGER_ID_seq"'::regclass),
  "NAME" text COLLATE "pg_catalog"."default",
  "SIZE" int4,
  "EXTENSION" text COLLATE "pg_catalog"."default",
  "PATH" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default",
  "TITLE" text COLLATE "pg_catalog"."default",
  "TYPE" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of APP_FILE_MANAGER
-- ----------------------------
INSERT INTO "public"."APP_FILE_MANAGER" VALUES (9, 'logo.jpg', 16, '.jpg', 'uploads/file_manager/logo.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Application Logo', 'image/jpeg');
INSERT INTO "public"."APP_FILE_MANAGER" VALUES (10, 'bg-login.jpg', 607, '.jpg', 'uploads/file_manager/bg-login.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Background Login', 'image/jpeg');
INSERT INTO "public"."APP_FILE_MANAGER" VALUES (11, 'pelni-logo.png', 40, '.png', 'uploads/file_manager/pelni-logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Pelni Logo', 'image/png');
INSERT INTO "public"."APP_FILE_MANAGER" VALUES (12, 'KD_20-2015-Penetapan_Portofolio-Spesifikasi_Jasa.pdf', 2288, '.pdf', 'uploads/file_manager/KD_20-2015-Penetapan_Portofolio-Spesifikasi_Jasa.pdf', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Portfolio', 'application/pdf');

-- ----------------------------
-- Table structure for APP_FUNCTION_ACCESS
-- ----------------------------
DROP TABLE IF EXISTS "public"."APP_FUNCTION_ACCESS";
CREATE TABLE "public"."APP_FUNCTION_ACCESS" (
  "ID" int4 NOT NULL DEFAULT nextval('"APP_FUNCTION_ACCESS_ID_seq"'::regclass),
  "NAME" text COLLATE "pg_catalog"."default",
  "READ_PRIV" int4 DEFAULT 0,
  "EDIT_PRIV" int4 DEFAULT 0,
  "DELETE_PRIV" int4 DEFAULT 0,
  "ADD_PRIV" int4 DEFAULT 0,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default",
  "MENU_ID" int4,
  "IS_DELETE" int4
)
;

-- ----------------------------
-- Records of APP_FUNCTION_ACCESS
-- ----------------------------
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (479, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 40, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (480, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 41, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (481, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 2, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (482, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 6, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (483, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 7, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (484, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 8, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (485, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 10, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (486, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 3, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (487, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 11, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (488, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 12, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (489, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 52, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (490, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 4, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (491, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 13, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (492, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 20, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (493, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 21, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (448, 'pusat', 0, 0, 0, 1, NULL, '', NULL, NULL, NULL, NULL, 6, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (449, 'pusat', 0, 0, 0, 1, NULL, '', NULL, NULL, NULL, NULL, 7, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (450, 'pusat', 0, 1, 0, 0, NULL, '', NULL, NULL, NULL, NULL, 38, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (446, 'pusat', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 1, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (451, 'pusat', 0, 0, 1, 0, NULL, '', NULL, NULL, NULL, NULL, 9, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (452, 'pusat', 0, 0, 1, 0, NULL, '', NULL, NULL, NULL, NULL, 37, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (447, 'pusat', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 2, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (520, 'admin_336722', 0, 0, 1, 0, NULL, '', NULL, NULL, NULL, NULL, 37, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (515, 'admin_336722', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 2, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (516, 'admin_336722', 0, 0, 0, 1, NULL, '', NULL, NULL, NULL, NULL, 6, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (474, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 1, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (475, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 9, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (476, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 37, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (477, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 38, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (478, 'administrator', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 39, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (517, 'admin_336722', 0, 0, 0, 1, NULL, '', NULL, NULL, NULL, NULL, 7, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (518, 'admin_336722', 0, 1, 0, 0, NULL, '', NULL, NULL, NULL, NULL, 38, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (532, 'admin_5041507472787', 0, 1, 0, 0, NULL, '', NULL, NULL, NULL, NULL, 38, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (514, 'admin_336722', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 1, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (519, 'admin_336722', 0, 0, 1, 0, NULL, '', NULL, NULL, NULL, NULL, 9, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (533, 'admin_5041507472787', 0, 0, 1, 0, NULL, '', NULL, NULL, NULL, NULL, 9, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (530, 'admin_5041507472787', 0, 0, 0, 1, NULL, '', NULL, NULL, NULL, NULL, 6, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (523, 'adminx', 0, 0, 0, 1, NULL, '', NULL, NULL, NULL, NULL, 6, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (524, 'adminx', 0, 0, 0, 1, NULL, '', NULL, NULL, NULL, NULL, 7, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (531, 'admin_5041507472787', 0, 0, 0, 1, NULL, '', NULL, NULL, NULL, NULL, 7, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (525, 'adminx', 0, 1, 0, 0, NULL, '', NULL, NULL, NULL, NULL, 38, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (534, 'admin_5041507472787', 0, 0, 1, 0, NULL, '', NULL, NULL, NULL, NULL, 37, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (521, 'adminx', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 1, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (526, 'adminx', 0, 0, 1, 0, NULL, '', NULL, NULL, NULL, NULL, 9, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (527, 'adminx', 0, 0, 1, 0, NULL, '', NULL, NULL, NULL, NULL, 37, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (522, 'adminx', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 2, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (528, 'admin_5041507472787', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 1, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (529, 'admin_5041507472787', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 2, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (539, 'admin_2211507472870', 0, 1, 0, 0, NULL, '', NULL, NULL, NULL, NULL, 38, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (535, 'admin_2211507472870', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 1, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (537, 'admin_2211507472870', 0, 0, 0, 1, NULL, '', NULL, NULL, NULL, NULL, 6, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (538, 'admin_2211507472870', 0, 0, 0, 1, NULL, '', NULL, NULL, NULL, NULL, 7, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (540, 'admin_2211507472870', 0, 0, 1, 0, NULL, '', NULL, NULL, NULL, NULL, 9, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (541, 'admin_2211507472870', 0, 0, 1, 0, NULL, '', NULL, NULL, NULL, NULL, 37, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (536, 'admin_2211507472870', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 2, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (544, 'admin_1121507472885', 0, 0, 0, 1, NULL, '', NULL, NULL, NULL, NULL, 6, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (545, 'admin_1121507472885', 0, 0, 0, 1, NULL, '', NULL, NULL, NULL, NULL, 7, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (546, 'admin_1121507472885', 0, 1, 0, 0, NULL, '', NULL, NULL, NULL, NULL, 38, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (542, 'admin_1121507472885', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 1, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (547, 'admin_1121507472885', 0, 0, 1, 0, NULL, '', NULL, NULL, NULL, NULL, 9, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (548, 'admin_1121507472885', 0, 0, 1, 0, NULL, '', NULL, NULL, NULL, NULL, 37, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (543, 'admin_1121507472885', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 2, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1301, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 127, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1302, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 107, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1303, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 108, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1304, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 109, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1305, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 110, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1306, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 114, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1307, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 125, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1308, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 126, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1309, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 111, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1310, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 112, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1311, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 113, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1312, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 131, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1313, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 137, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1314, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 138, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1315, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 134, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1316, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 135, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1317, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 133, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1318, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 132, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1319, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 136, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1320, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 119, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1321, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 124, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1322, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 123, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1323, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 128, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1324, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 122, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1325, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 150, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1326, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 151, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1327, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 115, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1328, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 130, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1329, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 116, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1330, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 118, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1331, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 117, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1299, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 103, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1300, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 105, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1298, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 129, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1332, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 148, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1333, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 149, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1334, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 152, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1335, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 143, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1336, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 144, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1337, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 145, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1338, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 146, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1339, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 147, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1340, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 154, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1341, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 155, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1342, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 141, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1343, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 142, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1344, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 139, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1345, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 140, 0);
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES (1346, 'admin', 1, 1, 1, 1, NULL, '', NULL, NULL, NULL, NULL, 153, 0);

-- ----------------------------
-- Table structure for APP_LOG
-- ----------------------------
DROP TABLE IF EXISTS "public"."APP_LOG";
CREATE TABLE "public"."APP_LOG" (
  "LOG_ID" int4 NOT NULL DEFAULT nextval('"APP_LOG_LOG_ID_seq"'::regclass),
  "CREATE_TIME" timestamp(6),
  "ACTIVITY" text COLLATE "pg_catalog"."default",
  "IP" text COLLATE "pg_catalog"."default",
  "DETAIL" text COLLATE "pg_catalog"."default",
  "USERNAME" text COLLATE "pg_catalog"."default",
  "METHOD" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for APP_LOG_CLIENT
-- ----------------------------
DROP TABLE IF EXISTS "public"."APP_LOG_CLIENT";
CREATE TABLE "public"."APP_LOG_CLIENT" (
  "LOG_ID" int4 NOT NULL DEFAULT nextval('"APP_LOG_CLIENT_LOG_CLIENT_ID_seq"'::regclass),
  "CREATE_TIME" timestamp(6),
  "ACTIVITY" text COLLATE "pg_catalog"."default",
  "IP" text COLLATE "pg_catalog"."default",
  "DETAIL" text COLLATE "pg_catalog"."default",
  "USERNAME" text COLLATE "pg_catalog"."default",
  "CLIENT_SITE_NAME" text COLLATE "pg_catalog"."default",
  "METHOD" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for APP_MENU
-- ----------------------------
DROP TABLE IF EXISTS "public"."APP_MENU";
CREATE TABLE "public"."APP_MENU" (
  "MENU_ID" int4 NOT NULL DEFAULT nextval('"APP_MENU_MENU_ID_seq"'::regclass),
  "MENU_LEVEL" int4,
  "REFERENCE" int4,
  "TITLE" text COLLATE "pg_catalog"."default",
  "URL" text COLLATE "pg_catalog"."default",
  "REMARK" text COLLATE "pg_catalog"."default",
  "TARGET" text COLLATE "pg_catalog"."default",
  "IMAGE" text COLLATE "pg_catalog"."default",
  "WEIGHT" int4,
  "SHOW" int4,
  "HIERARCHY" int4,
  "BASICHIERARCHY" int4,
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of APP_MENU
-- ----------------------------
INSERT INTO "public"."APP_MENU" VALUES (105, 2, 103, 'Security', NULL, 'Security', '_self', NULL, 70, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (110, 2, 103, 'Website', NULL, 'Website', '_self', NULL, 30, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (114, 3, 110, 'Tag', '/tag', 'Tag', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (124, 3, 119, 'SMS Gateway', '/sms_gateway', 'SMS Gateway', '_self', '', 30, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (123, 3, 119, 'File Manager', '/file_manager', 'File Manager', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (125, 3, 110, 'Article', '/article', 'Article', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (126, 3, 110, 'Article Category', '/article_category', 'Article Category', '_self', '', 30, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (127, 3, 105, 'Log Monitoring', '/log_monitoring', 'Log Monitoring', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (129, 1, 0, 'Dashboard', '/dashboard', 'Dashboard', '_self', '<i class="fa fa-bar-chart"></i> ', 1, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (107, 3, 105, 'User Management', '/user/', 'User Management', '_self', '', 10, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (108, 3, 105, 'Function Access', '/function_access/', 'Funcion Access', '_self', NULL, 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (109, 3, 105, 'Menu Management', '/menu/', 'Menu Management', '_self', NULL, 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (130, 2, 115, 'BBM ', '/bbm', 'BBM', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (111, 3, 110, 'Website Menu', '/website_menu/', 'Website Menu', '_self', NULL, 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (112, 3, 110, 'Page Static', '/page_static/', 'Page Static', '_self', NULL, 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (113, 3, 110, 'Slider', '/slider/', 'Slider', '_self', NULL, 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (116, 2, 115, 'Vessel', '/vessel/', 'Vessel', '_self', NULL, 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (118, 2, 115, 'Port', '/port/', 'Port', '_self', NULL, 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (117, 2, 115, 'Barge', '/barge/', 'Barge', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (128, 3, 119, 'Running Text Alert', '/running_text', 'Running Text Alert', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (131, 2, 103, 'Client', '', 'Client', '', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (134, 3, 131, 'Client Access', '/client_access', 'Client Access', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (135, 3, 131, 'Client User', '/client_user', 'Client User', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (133, 3, 131, 'Client Menu ', '/client_menu', 'Client Menu', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (132, 3, 131, 'Client Site', '/client_site', 'Create Site', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (136, 3, 131, 'Client Log', '/log_monitoring_client', 'Log Monitoring Client', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (148, 2, 115, 'Product', 'product', 'Product Management', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (140, 2, 139, 'Form Entry', '/form_entry', 'Form Standar Untuk Input Dari Lokasi', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (149, 2, 115, 'Location', 'location', 'Master Location', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (103, 1, 0, 'Setting', '', 'Setting Management', '_self', '<i class="fa fa-cogs"></i> ', 10, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (119, 2, 103, 'Preference', '', 'Preference', '_self', '', 50, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (142, 2, 141, 'Report', 'report', 'Standard Report', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (150, 2, 103, 'Application Setting', 'setting', 'Application Setting', '_self', '', 71, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (151, 1, 0, 'Map Point', 'map_point', 'Map Point ', '_self', '<i class="fa fa-globe"></i>', 4, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (152, 2, 115, 'Icon', 'icon', 'Master Icon', '_self', '', 11, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (115, 1, 0, 'Data Master', '', 'Data Master', '_self', '<i class="fa fa-database"></i> ', 4, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (122, 3, 119, 'Alert Subscriber', '/alert_subscriber', 'SMS Alert', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (141, 1, 0, 'Report', '', 'Report Dari Data Laporan Yang Masuk', '_self', '<i class="fa fa-newspaper-o" aria-hidden="true"></i>', 3, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (139, 1, 0, 'Form Entry', '', 'Form Entry Data Lapangan', '_self', '<i class="fa fa-pencil"></i>', 2, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (143, 2, 115, 'CV', 'cv', 'Master CV', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (144, 2, 115, 'Tools', 'tool', 'Master Tool', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (145, 2, 115, 'Standard & Reference', 'std_ref', 'Standard & Reference', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (146, 2, 115, 'Contract', 'contract', 'Contract', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (147, 2, 115, 'Intervention', 'intervention', 'Intervention', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (153, 1, 0, 'Alert Confirmation', 'alert_confirmation', '', '_self', '<i class="fa fa-envelope"></i>', 4, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (154, 2, 115, 'Branch', 'cabang', 'branch', '_self', '', 1, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."APP_MENU" VALUES (155, 2, 115, 'Personil', 'personil', 'Personil', '_self', '', 3, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for APP_ROUTE
-- ----------------------------
DROP TABLE IF EXISTS "public"."APP_ROUTE";
CREATE TABLE "public"."APP_ROUTE" (
  "ROUTE_ID" int4 NOT NULL DEFAULT nextval('"APP_ROUTE_ROUTE_ID_seq"'::regclass),
  "SLUG" text COLLATE "pg_catalog"."default",
  "CONTROLLER" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for APP_SETTING
-- ----------------------------
DROP TABLE IF EXISTS "public"."APP_SETTING";
CREATE TABLE "public"."APP_SETTING" (
  "SETTING_ID" int4 NOT NULL DEFAULT nextval('"APP_SETTING_SETTING_ID_seq"'::regclass),
  "SETTING_NAME" text COLLATE "pg_catalog"."default",
  "SETTING_VALUE" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of APP_SETTING
-- ----------------------------
INSERT INTO "public"."APP_SETTING" VALUES (1, 'APP_NAME', 'Sucofindo');
INSERT INTO "public"."APP_SETTING" VALUES (2, 'APP_WALLPAPER', 'http://localhost/uploads/file_manager/bg-login.jpg');
INSERT INTO "public"."APP_SETTING" VALUES (4, 'APP_BRAND_HEIGHT', '50px');
INSERT INTO "public"."APP_SETTING" VALUES (5, 'APP_BRAND_WIDTH', '170px');
INSERT INTO "public"."APP_SETTING" VALUES (6, 'APP_BRAND_LOGO', 'http://localhost/uploads/file_manager/logo.jpg');

-- ----------------------------
-- Table structure for APP_USER
-- ----------------------------
DROP TABLE IF EXISTS "public"."APP_USER";
CREATE TABLE "public"."APP_USER" (
  "USER_ID" int4 NOT NULL DEFAULT nextval('"APP_USER_USER_ID_seq"'::regclass),
  "USERNAME" text COLLATE "pg_catalog"."default",
  "EMAIL" text COLLATE "pg_catalog"."default",
  "FIRST_NAME" text COLLATE "pg_catalog"."default",
  "LAST_NAME" text COLLATE "pg_catalog"."default",
  "PASSWORD" text COLLATE "pg_catalog"."default",
  "COUNTER" int4,
  "STATUS" text COLLATE "pg_catalog"."default",
  "REMARK" text COLLATE "pg_catalog"."default",
  "CHANGE_PASSWORD" text COLLATE "pg_catalog"."default",
  "FUNCTION_ACCESS" text COLLATE "pg_catalog"."default",
  "INQUIRY_ACCESS" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default",
  "PHONE" text COLLATE "pg_catalog"."default",
  "PHOTO" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of APP_USER
-- ----------------------------
INSERT INTO "public"."APP_USER" VALUES (7, 'teguh', 'teguh@gmail.com', 'Teguh', 'Widodo', '21232f297a57a5a743894a0e4a801fc3', NULL, 'N', 'Asset Test', NULL, 'admin', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, '08568163177', 'employee.jpg');
INSERT INTO "public"."APP_USER" VALUES (5, 'wiblink', 'wibi@gmail.com', 'Wibisono', 'Flow', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Y', 'remark', NULL, 'admin', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, '081808656181', 'profileother.jpg');
INSERT INTO "public"."APP_USER" VALUES (1, 'admin', 'tubagus@sucofindo.co.id', 'TUBAGUS', ' HARYAWAN', '21232f297a57a5a743894a0e4a801fc3', 0, 'Y', 'adsfadsfasdf', NULL, 'admin', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, '08121076201', 'profile12.jpg');
INSERT INTO "public"."APP_USER" VALUES (8, 'tubagus', 'tubagus@gmail.com', 'Tubagus', '', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Y', '', NULL, 'admin', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, '', 'user-icon-png-pnglogocom.png');

-- ----------------------------
-- Table structure for APP_USER_GROUP
-- ----------------------------
DROP TABLE IF EXISTS "public"."APP_USER_GROUP";
CREATE TABLE "public"."APP_USER_GROUP" (
  "GROUP_ID" int4 NOT NULL DEFAULT nextval('"APP_USER_GROUP_GROUP_ID_seq"'::regclass),
  "GROUP_NAME" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default",
  "PHONE" text COLLATE "pg_catalog"."default",
  "PHOTO" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of APP_USER_GROUP
-- ----------------------------
INSERT INTO "public"."APP_USER_GROUP" VALUES (2, 'admin', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for FORM_ENTRY_FIELD
-- ----------------------------
DROP TABLE IF EXISTS "public"."FORM_ENTRY_FIELD";
CREATE TABLE "public"."FORM_ENTRY_FIELD" (
  "ID" int4 NOT NULL DEFAULT nextval('"FORM_ENTRY_FIELD_ID_seq"'::regclass),
  "SC" text COLLATE "pg_catalog"."default",
  "IWO" text COLLATE "pg_catalog"."default",
  "SPK" text COLLATE "pg_catalog"."default",
  "VOY" text COLLATE "pg_catalog"."default",
  "AREA" text COLLATE "pg_catalog"."default",
  "SUPPLIER" text COLLATE "pg_catalog"."default",
  "BUYER" text COLLATE "pg_catalog"."default",
  "SELLER" text COLLATE "pg_catalog"."default",
  "TRADER" text COLLATE "pg_catalog"."default",
  "KONTRAK" text COLLATE "pg_catalog"."default",
  "PRODUCT" text COLLATE "pg_catalog"."default",
  "DATE_NOR" date,
  "TIME_NOR" time(6),
  "FWAL_BBLS" text COLLATE "pg_catalog"."default",
  "FWAL_KL15" text COLLATE "pg_catalog"."default",
  "FILE_ORDER" text COLLATE "pg_catalog"."default",
  "FWAL_KLOBS" text COLLATE "pg_catalog"."default",
  "REMARKS_NOR" text COLLATE "pg_catalog"."default",
  "SELECT_PORT" text COLLATE "pg_catalog"."default",
  "SHARING_FEE" text COLLATE "pg_catalog"."default",
  "SL_GSV_BBLS" text COLLATE "pg_catalog"."default",
  "SL_GSV_KL15" text COLLATE "pg_catalog"."default",
  "DATE_BERTHED" date,
  "FWAL_LONGTON" text COLLATE "pg_catalog"."default",
  "PRODUCT_TYPE" text COLLATE "pg_catalog"."default",
  "SELECT_CARGO" text COLLATE "pg_catalog"."default",
  "SL_GSV_KLOBS" text COLLATE "pg_catalog"."default",
  "TIME_BERTHED" time(6),
  "BL_START_DATE" date,
  "BL_START_TIME" time(6),
  "DATE_ACCEPTED" date,
  "DATE_CONTRACT" date,
  "PORT_TERMINAL" text COLLATE "pg_catalog"."default",
  "SAMPLE_SOURCE" text COLLATE "pg_catalog"."default",
  "SELECT_CLIENT" text COLLATE "pg_catalog"."default",
  "SFAL_TOV_BBLS" text COLLATE "pg_catalog"."default",
  "SFAL_TOV_KL15" text COLLATE "pg_catalog"."default",
  "ST_NOMINATION" text COLLATE "pg_catalog"."default",
  "TIME_ACCEPTED" time(6),
  "DATE_COMMENCED" date,
  "DATE_COMPLETED" date,
  "FWAL_METRICTON" text COLLATE "pg_catalog"."default",
  "SELECT_PRODUCT" text COLLATE "pg_catalog"."default",
  "SFAL_TOV_KLOBS" text COLLATE "pg_catalog"."default",
  "SL_GSV_LONGTON" text COLLATE "pg_catalog"."default",
  "TIME_COMMENCED" time(6),
  "TIME_COMPLETED" time(6),
  "DATE_ANCHORAGED" date,
  "REMARKS_BERTHED" text COLLATE "pg_catalog"."default",
  "RN_LETTER_ISSUE" text COLLATE "pg_catalog"."default",
  "RN_NOTICE_ISSUE" text COLLATE "pg_catalog"."default",
  "TIME_ANCHORAGED" time(6),
  "BL_QUANTITY_BBLS" text COLLATE "pg_catalog"."default",
  "BL_QUANTITY_KL15" text COLLATE "pg_catalog"."default",
  "DATE_KEY_MEETING" date,
  "DATE_OF_ANALYSIS" date,
  "REMARKS_ACCEPTED" text COLLATE "pg_catalog"."default",
  "SF_QUANTITY_BBLS" text COLLATE "pg_catalog"."default",
  "SF_QUANTITY_KL15" text COLLATE "pg_catalog"."default",
  "SFAL_TOV_LONGTON" text COLLATE "pg_catalog"."default",
  "SL_GSV_METRICTON" text COLLATE "pg_catalog"."default",
  "TIME_KEY_MEETING" time(6),
  "VEF_LOADING_BBLS" text COLLATE "pg_catalog"."default",
  "BL_QUANTITY_KLOBS" text COLLATE "pg_catalog"."default",
  "BO_MDO_ON_ARRIVAL" text COLLATE "pg_catalog"."default",
  "BO_MFO_ON_ARRIVAL" text COLLATE "pg_catalog"."default",
  "OBQ_QUANTITY_BBLS" text COLLATE "pg_catalog"."default",
  "OBQ_QUANTITY_KL15" text COLLATE "pg_catalog"."default",
  "REMARKS_COMMENCED" text COLLATE "pg_catalog"."default",
  "REMARKS_COMPLETED" text COLLATE "pg_catalog"."default",
  "SF_QUANTITY_KLOBS" text COLLATE "pg_catalog"."default",
  "SL_VS_BOL_R1_BBLS" text COLLATE "pg_catalog"."default",
  "SL_VS_BOL_R1_KL15" text COLLATE "pg_catalog"."default",
  "ACTIVITIES_REMARKS" text COLLATE "pg_catalog"."default",
  "DATE_LOISPKPOWONOA" date,
  "DATE_VESSEL_SAILED" date,
  "LOADING_START_DATE" date,
  "LOADING_START_TIME" time(6),
  "OBQ_QUANTITY_KLOBS" text COLLATE "pg_catalog"."default",
  "REMARKS_ANCHORAGED" text COLLATE "pg_catalog"."default",
  "RN_STATEMENT_ISSUE" text COLLATE "pg_catalog"."default",
  "SFAL_TOV_METRICTON" text COLLATE "pg_catalog"."default",
  "SL_VS_BOL_R1_KLOBS" text COLLATE "pg_catalog"."default",
  "TIME_VESSEL_SAILED" time(6),
  "BL_QUANTITY_LONGTON" text COLLATE "pg_catalog"."default",
  "BO_MDO_ON_DEPARTURE" text COLLATE "pg_catalog"."default",
  "BO_MFO_ON_DEPARTURE" text COLLATE "pg_catalog"."default",
  "CLIENT_SITE_ID_FORM" text COLLATE "pg_catalog"."default",
  "DATE_HOSE_CONNECTED" date,
  "DATE_VESSEL_ARRIVED" date,
  "REMARKS_KEY_MEETING" text COLLATE "pg_catalog"."default",
  "SELECT_INTERVENTION" int4,
  "SF_QUANTITY_LONGTON" text COLLATE "pg_catalog"."default",
  "TIME_HOSE_CONNECTED" time(6),
  "TIME_VESSEL_ARRIVED" time(6),
  "DISCHARGE_START_DATE" date,
  "DISCHARGE_START_TIME" time(6),
  "OBQ_QUANTITY_LONGTON" text COLLATE "pg_catalog"."default",
  "SL_APPLIED_VEFL_BBLS" text COLLATE "pg_catalog"."default",
  "SL_VS_BOL_R1_LONGTON" text COLLATE "pg_catalog"."default",
  "BL_15_DERAJAT_CELCIUS" text COLLATE "pg_catalog"."default",
  "BL_QUANTITY_METRICTON" text COLLATE "pg_catalog"."default",
  "LOADING_COMPLETE_DATE" date,
  "LOADING_COMPLETE_TIME" time(6),
  "REMARKS_VESSEL_SAILED" text COLLATE "pg_catalog"."default",
  "DATE_DOCUMENTS_ONBOARD" date,
  "DATE_LOADING_COMMENCED" date,
  "DATE_LOADING_COMPLETED" date,
  "DATE_SURVEYOR_ON_BOARD" date,
  "OBQ_QUANTITY_METRICTON" text COLLATE "pg_catalog"."default",
  "REMARKS_HOSE_CONNECTED" text COLLATE "pg_catalog"."default",
  "REMARKS_VESSEL_ARRIVED" text COLLATE "pg_catalog"."default",
  "SF_QUANTITY_METRICTON" text COLLATE "pg_catalog"."default",
  "SL_VS_BOL_R1_METRICTON" text COLLATE "pg_catalog"."default",
  "TIME_DOCUMENTS_ONBOARD" time(6),
  "TIME_LOADING_COMMENCED" time(6),
  "TIME_LOADING_COMPLETED" time(6),
  "TIME_SURVEYOR_ON_BOARD" time(6),
  "DATE_SAMPLING_COMMENCED" date,
  "DATE_SAMPLING_COMPLETED" date,
  "DISCHARGE_COMPLETE_DATE" date,
  "DISCHARGE_COMPLETE_TIME" time(6),
  "SC_ON_ARRIVAL_DRAFT_AFT" text COLLATE "pg_catalog"."default",
  "SC_ON_ARRIVAL_DRAFT_FWD" text COLLATE "pg_catalog"."default",
  "TIME_SAMPLING_COMMENCED" time(6),
  "TIME_SAMPLING_COMPLETED" time(6),
  "DATE_CONNECTED_COMMENCED" date,
  "DATE_CONNECTED_COMPLETED" date,
  "SC_ON_ARRIVAL_DRAFT_LIST" text COLLATE "pg_catalog"."default",
  "TIME_CONNECTED_COMMENCED" time(6),
  "TIME_CONNECTED_COMPLETED" time(6),
  "REMARKS_DOCUMENTS_ONBOARD" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_COMMENCED" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_COMPLETED" text COLLATE "pg_catalog"."default",
  "REMARKS_SURVEYOR_ON_BOARD" text COLLATE "pg_catalog"."default",
  "SC_ON_DEPARTURE_DRAFT_AFT" text COLLATE "pg_catalog"."default",
  "SC_ON_DEPARTURE_DRAFT_FWD" text COLLATE "pg_catalog"."default",
  "DATE_MEASUREMENT_COMMENCED" date,
  "DATE_MEASUREMENT_COMPLETED" date,
  "REMARKS_SAMPLING_COMMENCED" text COLLATE "pg_catalog"."default",
  "REMARKS_SAMPLING_COMPLETED" text COLLATE "pg_catalog"."default",
  "SC_ON_DEPARTURE_DRAFT_LIST" text COLLATE "pg_catalog"."default",
  "SL_VEF_APPLIED_VS_BOL_BBLS" text COLLATE "pg_catalog"."default",
  "SL_VEF_APPLIED_VS_BOL_KL15" text COLLATE "pg_catalog"."default",
  "TIME_MEASUREMENT_COMMENCED" time(6),
  "TIME_MEASUREMENT_COMPLETED" time(6),
  "REMARKS_CONNECTED_COMMENCED" text COLLATE "pg_catalog"."default",
  "REMARKS_CONNECTED_COMPLETED" text COLLATE "pg_catalog"."default",
  "SL_VEF_APPLIED_VS_BOL_KLOBS" text COLLATE "pg_catalog"."default",
  "REMARKS_MEASUREMENT_COMMENCED" text COLLATE "pg_catalog"."default",
  "REMARKS_MEASUREMENT_COMPLETED" text COLLATE "pg_catalog"."default",
  "SL_VEF_APPLIED_VS_BOL_LONGTON" text COLLATE "pg_catalog"."default",
  "SL_VEF_APPLIED_VS_BOL_METRICTON" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "CLIENT_SITE_ID" int4,
  "SF_GSV_KLOBS" text COLLATE "pg_catalog"."default",
  "SF_NSV_KLOBS" text COLLATE "pg_catalog"."default",
  "SF_FREE_WATER_AL_BBLS" text COLLATE "pg_catalog"."default",
  "SF_FREE_WATER_AL_KL15" text COLLATE "pg_catalog"."default",
  "SF_SFAL_TOV_METRICTON" text COLLATE "pg_catalog"."default",
  "SL_APPLIED_VEFL_KLOBS" text COLLATE "pg_catalog"."default",
  "DATE_HOSE_DISCONNECTED" date,
  "SF_FREE_WATER_AL_KLOBS" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_COMPLETED" date,
  "DATE_INPECTION_COMMENCED" date,
  "SF_FREE_WATER_AL_LONGTON" text COLLATE "pg_catalog"."default",
  "TIME_DISCHARGE_COMMENCED" time(6),
  "TIME_DISCHARGE_COMPLETED" time(6),
  "TIME_INPECTION_COMMENCED" time(6),
  "DATE_INSPECTION_COMPLETED" date,
  "REMARKS_HOSE_DISCONNECTED" text COLLATE "pg_catalog"."default",
  "SL_APPLIED_VEFL_METRICTON" text COLLATE "pg_catalog"."default",
  "TIME_INSPECTION_COMPLETED" time(6),
  "SF_FREE_WATER_AL_METRICTON" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_COMMENCED" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_COMPLETED" text COLLATE "pg_catalog"."default",
  "REMARKS_INPECTION_COMMENCED" text COLLATE "pg_catalog"."default",
  "REMARKS_INSPECTION_COMPLETED" text COLLATE "pg_catalog"."default",
  "DATE_HOSE_CONNECTED_COMMENCED" date,
  "DATE_HOSE_CONNECTED_COMPLETED" date,
  "SL_VEF_APPLIED_VS_BOL_R1_BBLS" text COLLATE "pg_catalog"."default",
  "SL_VEF_APPLIED_VS_BOL_R1_KL15" text COLLATE "pg_catalog"."default",
  "TIME_HOSE_CONNECTED_COMMENCED" time(6),
  "TIME_HOSE_CONNECTED_COMPLETED" time(6),
  "SL_VEF_APPLIED_VS_BOL_R1_KLOBS" text COLLATE "pg_catalog"."default",
  "SF_SHORE_TANKS_NOMINATION_KLOBS" text COLLATE "pg_catalog"."default",
  "DATE_CARGO_MEASUREMENT_COMMENCED" date,
  "DATE_CARGO_MEASUREMENT_COMPLETED" date,
  "REMARKS_HOSE_CONNECTED_COMMENCED" text COLLATE "pg_catalog"."default",
  "REMARKS_HOSE_CONNECTED_COMPLETED" text COLLATE "pg_catalog"."default",
  "SL_VEF_APPLIED_VS_BOL_R1_LONGTON" text COLLATE "pg_catalog"."default",
  "TIME_CARGO_MEASUREMENT_COMMENCED" time(6),
  "TIME_CARGO_MEASUREMENT_COMPLETED" time(6),
  "SL_VEF_APPLIED_VS_BOL_R1_METRICTON" text COLLATE "pg_catalog"."default",
  "REMARKS_CARGO_MEASUREMENT_COMMENCED" text COLLATE "pg_catalog"."default",
  "REMARKS_CARGO_MEASUREMENT_COMPLETED" text COLLATE "pg_catalog"."default",
  "BL_FLOW_METER" text COLLATE "pg_catalog"."default",
  "BL_SHORE_TANK" text COLLATE "pg_catalog"."default",
  "BL_SHIP_TANK" text COLLATE "pg_catalog"."default",
  "FSOQ" text COLLATE "pg_catalog"."default",
  "SURVEYOR_IN_CHARGE" text COLLATE "pg_catalog"."default",
  "RN_NOTICE_ISSUE_DESCRIPTION" text COLLATE "pg_catalog"."default",
  "RN_LETTER_ISSUE_DESCRIPTION" text COLLATE "pg_catalog"."default",
  "RN_STATEMENT_ISSUE_DESCRIPTION" text COLLATE "pg_catalog"."default",
  "DATE_A_AWEIGH" date,
  "TIME_A_AWEIGH" time(6),
  "DATE_POB" date,
  "TIME_POB" time(6),
  "DATE_BERTHING" date,
  "TIME_BERTHING" time(6),
  "DATE_SBD_COMMENCED" date,
  "DATE_SBD_COMPLETED" date,
  "TIME_SBD_COMMENCED" time(6),
  "TIME_SBD_COMPLETED" time(6),
  "DATE_DISCHARGE_COMMENCED" date,
  "DATE_TANKS_INS_COMMENCED" date,
  "TIME_TANKS_INS_COMMENCED" time(6),
  "DATE_TANKS_INS_COMPLETED" date,
  "TIME_TANKS_INS_COMPLETED" time(6),
  "DATE_SVY_LEFT_VESSEL" date,
  "TIME_SVY_LEFT_VESSEL" time(6),
  "DATE_VESSEL_SAIL" date,
  "TIME_VESSEL_SAIL" time(6),
  "TIME_HOSE_DISCONNECTED" time(6),
  "BL_SFAL_KL15" text COLLATE "pg_catalog"."default",
  "BL_SFAL_BBLS" text COLLATE "pg_catalog"."default",
  "BL_SFAL_METRICTON" text COLLATE "pg_catalog"."default",
  "BL_SFAL_LONGTON" text COLLATE "pg_catalog"."default",
  "SF_SFAL_KLOBS" text COLLATE "pg_catalog"."default",
  "SF_SFAL_KL15" text COLLATE "pg_catalog"."default",
  "SF_SFAL_BBLS" text COLLATE "pg_catalog"."default",
  "SF_SFAL_METRICTON" text COLLATE "pg_catalog"."default",
  "SF_SFAL_LONGTON" text COLLATE "pg_catalog"."default",
  "SFBD_TOV_KLOBS" text COLLATE "pg_catalog"."default",
  "SFBD_TOV_KL15" text COLLATE "pg_catalog"."default",
  "SFBD_TOV_BBLS" text COLLATE "pg_catalog"."default",
  "SFBD_TOV_METRICTON" text COLLATE "pg_catalog"."default",
  "SFBD_TOV_LONGTON" text COLLATE "pg_catalog"."default",
  "SFBD_GSV_KLOBS" text COLLATE "pg_catalog"."default",
  "SFBD_GSV_BBLS" text COLLATE "pg_catalog"."default",
  "SFBD_GSV_METRICTON" text COLLATE "pg_catalog"."default",
  "SFBD_GSV_LONGTON" text COLLATE "pg_catalog"."default",
  "ROBQ_KLOBS" text COLLATE "pg_catalog"."default",
  "ROBQ_KL15" text COLLATE "pg_catalog"."default",
  "ROBQ_BBLS" text COLLATE "pg_catalog"."default",
  "ROBQ_METRICTON" text COLLATE "pg_catalog"."default",
  "ROBQ_LONGTON" text COLLATE "pg_catalog"."default",
  "BL_SFAL_KLOBS" text COLLATE "pg_catalog"."default",
  "SFBD_GSV_KL15" text COLLATE "pg_catalog"."default",
  "SLVS_BOL_R1_KLOBS" text COLLATE "pg_catalog"."default",
  "SLVS_BOL_R1_KL15" text COLLATE "pg_catalog"."default",
  "SLVS_BOL_R1_BBLS" text COLLATE "pg_catalog"."default",
  "SLVS_BOL_R1_LONGTON" text COLLATE "pg_catalog"."default",
  "SLVS_BOL_R1_METRICTON" text COLLATE "pg_catalog"."default",
  "SFAL_VS_SFBD_R2_KLOBS" text COLLATE "pg_catalog"."default",
  "SFAL_VS_SFBD_R2_KL15" text COLLATE "pg_catalog"."default",
  "SFAL_VS_SFBD_R2_BBLS" text COLLATE "pg_catalog"."default",
  "SFAL_VS_SFBD_R2_LONGTON" text COLLATE "pg_catalog"."default",
  "SFAL_VS_SFBD_R2_METRICTON" text COLLATE "pg_catalog"."default",
  "SFBD_VS_SR_R3_KLOBS" text COLLATE "pg_catalog"."default",
  "SFBD_VS_SR_R3_KL15" text COLLATE "pg_catalog"."default",
  "SFBD_VS_SR_R3_BBLS" text COLLATE "pg_catalog"."default",
  "SFBD_VS_SR_R3_LONGTON" text COLLATE "pg_catalog"."default",
  "SFBD_VS_SR_R3_METRICTON" text COLLATE "pg_catalog"."default",
  "SR_VS_BOL_R4_KLOBS" text COLLATE "pg_catalog"."default",
  "SR_VS_BOL_R4_KL15" text COLLATE "pg_catalog"."default",
  "SR_VS_BOL_R4_BBLS" text COLLATE "pg_catalog"."default",
  "SR_VS_BOL_R4_LONGTON" text COLLATE "pg_catalog"."default",
  "SR_VS_BOL_R4_METRICTON" text COLLATE "pg_catalog"."default",
  "VESSEL" text COLLATE "pg_catalog"."default",
  "ALERT_PUSH" int4 DEFAULT 0,
  "CLIENTS" text COLLATE "pg_catalog"."default",
  "BL_GSV_KLOBS" text COLLATE "pg_catalog"."default",
  "BL_GSV_KL15" text COLLATE "pg_catalog"."default",
  "BL_GSV_BBLS" text COLLATE "pg_catalog"."default",
  "BL_GSV_LONGTON" text COLLATE "pg_catalog"."default",
  "BL_GSV_METRICTON" text COLLATE "pg_catalog"."default",
  "BL_NSV_KLOBS" text COLLATE "pg_catalog"."default",
  "BL_NSV_KL15" text COLLATE "pg_catalog"."default",
  "BL_NSV_BBLS" text COLLATE "pg_catalog"."default",
  "BL_NSV_LONGTON" text COLLATE "pg_catalog"."default",
  "BL_NSV_METRICTON" text COLLATE "pg_catalog"."default",
  "SF_GSV_KL15" text COLLATE "pg_catalog"."default",
  "SF_GSV_BBLS" text COLLATE "pg_catalog"."default",
  "SF_GSV_LONGTON" text COLLATE "pg_catalog"."default",
  "SF_GSV_METRICTON" text COLLATE "pg_catalog"."default",
  "SF_NSV_KL15" text COLLATE "pg_catalog"."default",
  "SF_NSV_BBLS" text COLLATE "pg_catalog"."default",
  "SF_NSV_LONGTON" text COLLATE "pg_catalog"."default",
  "SF_NSV_METRICTON" text COLLATE "pg_catalog"."default",
  "SF_SFAL_TOV_KLOBS" text COLLATE "pg_catalog"."default",
  "SF_SFAL_TOV_KL15" text COLLATE "pg_catalog"."default",
  "SF_SFAL_TOV_BBLS" text COLLATE "pg_catalog"."default",
  "SF_SFAL_TOV_LONGTON" text COLLATE "pg_catalog"."default",
  "SFAL_GSV_KLOBS" text COLLATE "pg_catalog"."default",
  "SFAL_GSV_KL15" text COLLATE "pg_catalog"."default",
  "SFAL_GSV_BBLS" text COLLATE "pg_catalog"."default",
  "SFAL_GSV_LONGTON" text COLLATE "pg_catalog"."default",
  "SFAL_GSV_METRICTON" text COLLATE "pg_catalog"."default",
  "SFAL_NSV_KLOBS" text COLLATE "pg_catalog"."default",
  "SFAL_NSV_KL15" text COLLATE "pg_catalog"."default",
  "SFAL_NSV_BBLS" text COLLATE "pg_catalog"."default",
  "SFAL_NSV_LONGTON" text COLLATE "pg_catalog"."default",
  "SFAL_NSV_METRICTON" text COLLATE "pg_catalog"."default",
  "VEFL_KLOBS" text COLLATE "pg_catalog"."default",
  "VEFL_KL15" text COLLATE "pg_catalog"."default",
  "VEFL_BBLS" text COLLATE "pg_catalog"."default",
  "VEFL_LONGTON" text COLLATE "pg_catalog"."default",
  "VEFL_METRICTON" text COLLATE "pg_catalog"."default",
  "SL_APPLIED_VEFL_KL15" text COLLATE "pg_catalog"."default",
  "SL_APPLIED_VEFL_LONGTON" text COLLATE "pg_catalog"."default",
  "REMARKS_POB" text COLLATE "pg_catalog"."default",
  "REMARKS_A_AWEIGH" text COLLATE "pg_catalog"."default",
  "REMARKS_BERTHING" text COLLATE "pg_catalog"."default",
  "REMARKS_SBD_COMMENCED" text COLLATE "pg_catalog"."default",
  "REMARKS_SBD_COMPLETED" text COLLATE "pg_catalog"."default",
  "REMARKS_TANKS_INS_COMMENCED" text COLLATE "pg_catalog"."default",
  "REMARKS_TANKS_INS_COMPLETED" text COLLATE "pg_catalog"."default",
  "REMARKS_SVY_LEFT_VESSEL" text COLLATE "pg_catalog"."default",
  "REMARKS_VESSEL_SAIL" text COLLATE "pg_catalog"."default",
  "SFAL_KLOBS" text COLLATE "pg_catalog"."default",
  "SFAL_KL15" text COLLATE "pg_catalog"."default",
  "SFAL_BBLS" text COLLATE "pg_catalog"."default",
  "SFAL_LONGTON" text COLLATE "pg_catalog"."default",
  "SFAL_METRICTON" text COLLATE "pg_catalog"."default",
  "SF_SQ_KLOBS" text COLLATE "pg_catalog"."default",
  "SF_SQ_KL15" text COLLATE "pg_catalog"."default",
  "SF_SQ_BBLS" text COLLATE "pg_catalog"."default",
  "SF_SQ_LONGTON" text COLLATE "pg_catalog"."default",
  "SF_SQ_METRICTON" text COLLATE "pg_catalog"."default",
  "FREE_WATER_KLOBS" text COLLATE "pg_catalog"."default",
  "FREE_WATER_KL15" text COLLATE "pg_catalog"."default",
  "FREE_WATER_BBLS" text COLLATE "pg_catalog"."default",
  "FREE_WATER_LONGTON" text COLLATE "pg_catalog"."default",
  "FREE_WATER_METRICTON" text COLLATE "pg_catalog"."default",
  "SFBD_NSV_KLOBS" text COLLATE "pg_catalog"."default",
  "SFBD_NSV_KL15" text COLLATE "pg_catalog"."default",
  "SFBD_NSV_BBLS" text COLLATE "pg_catalog"."default",
  "SFBD_NSV_LONGTON" text COLLATE "pg_catalog"."default",
  "SFBD_NSV_METRICTON" text COLLATE "pg_catalog"."default",
  "TIME_LOADING_BARGE_ARRIVED" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_BARGE_ARRIVED" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_BARGE_ARRIVED" text COLLATE "pg_catalog"."default",
  "TIME_LOADING_NOR_TENDERED" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_NOR_TENDERED" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_NOR_TENDERED" text COLLATE "pg_catalog"."default",
  "TIME_LOADING_BARGE_ALL_FAST_ALONGSIDE" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_BARGE_ALL_FAST_ALONGSIDE" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_BARGE_ALL_FAST_ALONGSIDE" text COLLATE "pg_catalog"."default",
  "TIME_LOADING_KEY_MEETING" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_KEY_MEETING" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_KEY_MEETING" text COLLATE "pg_catalog"."default",
  "TIME_LOADING_NOR_ACCEPTED" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_NOR_ACCEPTED" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_NOR_ACCEPTED" text COLLATE "pg_catalog"."default",
  "TIME_LOADING_VALVE_SEEALED" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_VALVE_SEEALED" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_VALVE_SEEALED" text COLLATE "pg_catalog"."default",
  "TIME_LOADING_TANK_INSPECT_METER_VERIFICATION" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_TANK_INSPECT_METER_VERIFICATION" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_TANK_INSPECT_METER_VERIFICATION" text COLLATE "pg_catalog"."default",
  "TIME_LOADING_HOST_CONNECTED" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_HOST_CONNECTED" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_HOST_CONNECTED" text COLLATE "pg_catalog"."default",
  "TIME_LOADING_LOADING_COMMENCED" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_LOADING_COMMENCED" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_LOADING_COMMENCED" text COLLATE "pg_catalog"."default",
  "TIME_LOADING_LOADING_COMPLETED" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_LOADING_COMPLETED" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_LOADING_COMPLETED" text COLLATE "pg_catalog"."default",
  "TIME_DATE_LOADING_HOSE_ARMS_DISCONNECT" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_HOSE_ARMS_DISCONNECT" text COLLATE "pg_catalog"."default",
  "REMARKS_DATE_LOADING_HOSE_ARMS_DISCONNECT" text COLLATE "pg_catalog"."default",
  "TIME_LOADING_TANK_INSPECT_METER_VERIFICATION_FINAL" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_TANK_INSPECT_METER_VERIFICATION_FINAL" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_TANK_INSPECT_METER_VERIFICATION_FINAL" text COLLATE "pg_catalog"."default",
  "TIME_LOADING_CALCUL_COMPLETED_DOC_ONBOARD" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_CALCUL_COMPLETED_DOC_ONBOARD" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_CALCUL_COMPLETED_DOC_ONBOARD" text COLLATE "pg_catalog"."default",
  "TIME_DISCHARGE_BARGE_ARRIVED" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_BARGE_ARRIVED" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_BARGE_ARRIVED" text COLLATE "pg_catalog"."default",
  "TIME_DISCHARGE_NOR_TENDERED" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_NOR_TENDERED" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_NOR_TENDERED" text COLLATE "pg_catalog"."default",
  "TIME_DISCHARGE_KEY_MEETING" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_KEY_MEETING" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_KEY_MEETING" text COLLATE "pg_catalog"."default",
  "TIME_DISCHARGE_NOR_ACCEPTED" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_NOR_ACCEPTED" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_NOR_ACCEPTED" text COLLATE "pg_catalog"."default",
  "TIME_DISCHARGE_VALVE_SEEALED" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_VALVE_SEEALED" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_VALVE_SEEALED" text COLLATE "pg_catalog"."default",
  "TIME_DISCHARGE_TANK_INSPECT_MEASURE" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_TANK_INSPECT_MEASURE" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_TANK_INSPECT_MEASURE" text COLLATE "pg_catalog"."default",
  "TIME_VISUAL_INSPECTION_SAMPLING" text COLLATE "pg_catalog"."default",
  "DATE_VISUAL_INSPECTION_SAMPLING" text COLLATE "pg_catalog"."default",
  "REMARKS_VISUAL_INSPECTION_SAMPLING" text COLLATE "pg_catalog"."default",
  "TIME_DISCHARGE_HOST_CONNECTED" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_HOST_CONNECTED" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_HOST_CONNECTED" text COLLATE "pg_catalog"."default",
  "TIME_DISCHARGE_BUNKER_COMMENCED" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_BUNKER_COMMENCED" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_BUNKER_COMMENCED" text COLLATE "pg_catalog"."default",
  "TIME_DISCHARGE_BUNKER_COMPLETED" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_BUNKER_COMPLETED" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_BUNKER_COMPLETED" text COLLATE "pg_catalog"."default",
  "TIME_DATE_DISCHARGE_HOSE_DISCONNECT" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_HOSE_DISCONNECT" text COLLATE "pg_catalog"."default",
  "REMARKS_DATE_DISCHARGE_HOSE_DISCONNECT" text COLLATE "pg_catalog"."default",
  "TIME_DISCHARGE_TANK_INSPECT_MEASR_FINAL" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_TANK_INSPECT_MEASR_FINAL" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_TANK_INSPECT_MEASR_FINAL" text COLLATE "pg_catalog"."default",
  "TIME_DISCHARGE_VISUAL_INSPECTION_SAMPLING" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_VISUAL_INSPECTION_SAMPLING" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_VISUAL_INSPECTION_SAMPLING" text COLLATE "pg_catalog"."default",
  "TIME_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD" text COLLATE "pg_catalog"."default",
  "TIME_DISCHARGE_BARGE_LEAVE_SHIP" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_BARGE_LEAVE_SHIP" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_BARGE_LEAVE_SHIP" text COLLATE "pg_catalog"."default",
  "INITIAL_READOUT_KLOBS" text COLLATE "pg_catalog"."default",
  "INITIAL_READOUT_KL15" text COLLATE "pg_catalog"."default",
  "INITIAL_READOUT_METRIC_TONS" text COLLATE "pg_catalog"."default",
  "FINAL_READOUT_KLOBS" text COLLATE "pg_catalog"."default",
  "FINAL_READOUT_KL15" text COLLATE "pg_catalog"."default",
  "FINAL_READOUT_METRIC_TONS" text COLLATE "pg_catalog"."default",
  "DIFFERENCE_KLOBS" text COLLATE "pg_catalog"."default",
  "DIFFERENCE_KL15" text COLLATE "pg_catalog"."default",
  "DIFFERENCE_METRIC_TONS" text COLLATE "pg_catalog"."default",
  "METER_FACTOR_KLOBS" text COLLATE "pg_catalog"."default",
  "CORD_VOL_DELIVERED_KLOBS" text COLLATE "pg_catalog"."default",
  "CORD_VOL_DELIVERED_KL15" text COLLATE "pg_catalog"."default",
  "CORD_VOL_DELIVERED_METRIC_TONS" text COLLATE "pg_catalog"."default",
  "DENSITY15DEG_KLOBS" text COLLATE "pg_catalog"."default",
  "SUPPLY_LOSS_KLOBS" text COLLATE "pg_catalog"."default",
  "SUPPLY_LOSS_KL15" text COLLATE "pg_catalog"."default",
  "SUPPLY_LOSS_METRIC_TONS" text COLLATE "pg_catalog"."default",
  "TIME_LOADING_TANK_INSPECT_MEASURE" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_TANK_INSPECT_MEASURE" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_TANK_INSPECT_MEASURE" text COLLATE "pg_catalog"."default",
  "TIME_LOADING_TANK_INSPECT_METER_VERF" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_TANK_INSPECT_METER_VERF" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_TANK_INSPECT_METER_VERF" text COLLATE "pg_catalog"."default",
  "TIME_LOADING_VISUAL_INSPEC_SAMPL" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_VISUAL_INSPEC_SAMPL" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_VISUAL_INSPEC_SAMPL" text COLLATE "pg_catalog"."default",
  "TIME_LOADING_TANK_INSPECT_MEASR_FINAL" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_TANK_INSPECT_MEASR_FINAL" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_TANK_INSPECT_MEASR_FINAL" text COLLATE "pg_catalog"."default",
  "TIME_LOADING_TANK_INSPECT_METER_FINAL" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_TANK_INSPECT_METER_FINAL" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_TANK_INSPECT_METER_FINAL" text COLLATE "pg_catalog"."default",
  "TIME_LOADING_BARGE_LEAVE_DEPOT" text COLLATE "pg_catalog"."default",
  "DATE_LOADING_BARGE_LEAVE_DEPOT" text COLLATE "pg_catalog"."default",
  "REMARKS_LOADING_BARGE_LEAVE_DEPOT" text COLLATE "pg_catalog"."default",
  "TIME_DISCHARGE_BARGE_ALL_FAST_ALONGSIDE" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_BARGE_ALL_FAST_ALONGSIDE" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_BARGE_ALL_FAST_ALONGSIDE" text COLLATE "pg_catalog"."default",
  "TIME_DISCHARGE_TANK_INSPECT_METER_VERF" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_TANK_INSPECT_METER_VERF" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_TANK_INSPECT_METER_VERF" text COLLATE "pg_catalog"."default",
  "TIME_DATE_DISCHARGE_HOSE_ARMS_DISCONNECT" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_HOSE_ARMS_DISCONNECT" text COLLATE "pg_catalog"."default",
  "REMARKS_DATE_DISCHARGE_HOSE_ARMS_DISCONNECT" text COLLATE "pg_catalog"."default",
  "TIME_DISCHARGE_VISUAL_INSPEC_SAMPL" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_VISUAL_INSPEC_SAMPL" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_VISUAL_INSPEC_SAMPL" text COLLATE "pg_catalog"."default",
  "TIME_DISCHARGE_TANK_INSPECT_METER_FINAL" text COLLATE "pg_catalog"."default",
  "DATE_DISCHARGE_TANK_INSPECT_METER_FINAL" text COLLATE "pg_catalog"."default",
  "REMARKS_DISCHARGE_TANK_INSPECT_METER_FINAL" text COLLATE "pg_catalog"."default",
  "BARGE_BEFORE_LOADING_KLOBS" text COLLATE "pg_catalog"."default",
  "BARGE_BEFORE_LOADING_KL15" text COLLATE "pg_catalog"."default",
  "BARGE_BEFORE_LOADING_METRIC_TONS" text COLLATE "pg_catalog"."default",
  "BARGE_AFTER_LOADING_KLOBS" text COLLATE "pg_catalog"."default",
  "BARGE_AFTER_LOADING_KL15" text COLLATE "pg_catalog"."default",
  "BARGE_AFTER_LOADING_METRIC_TONS" text COLLATE "pg_catalog"."default",
  "BARGE_LOADED_KLOBS" text COLLATE "pg_catalog"."default",
  "BARGE_LOADED_KL15" text COLLATE "pg_catalog"."default",
  "BARGE_LOADED_METRIC_TONS" text COLLATE "pg_catalog"."default",
  "BARGE_BEFORE_DISCHARGE_KLOBS" text COLLATE "pg_catalog"."default",
  "BARGE_BEFORE_DISCHARGE_KL15" text COLLATE "pg_catalog"."default",
  "BARGE_BEFORE_DISCHARGE_METRIC_TONS" text COLLATE "pg_catalog"."default",
  "BARGE_AFTER_DISCHARGE_KLOBS" text COLLATE "pg_catalog"."default",
  "BARGE_AFTER_DISCHARGE_KL15" text COLLATE "pg_catalog"."default",
  "BARGE_AFTER_DISCHARGE_METRIC_TONS" text COLLATE "pg_catalog"."default",
  "BARGE_DISCHARGE_KLOBS" text COLLATE "pg_catalog"."default",
  "BARGE_DISCHARGE_KL15" text COLLATE "pg_catalog"."default",
  "BARGE_DISCHARGE_METRIC_TONS" text COLLATE "pg_catalog"."default",
  "BARGE_BEFORE_RECEIVE_KLOBS" text COLLATE "pg_catalog"."default",
  "BARGE_BEFORE_RECEIVE_KL15" text COLLATE "pg_catalog"."default",
  "BARGE_BEFORE_RECEIVE_METRIC_TONS" text COLLATE "pg_catalog"."default",
  "BARGE_AFTER_RECEIVE_KLOBS" text COLLATE "pg_catalog"."default",
  "BARGE_AFTER_RECEIVE_KL15" text COLLATE "pg_catalog"."default",
  "BARGE_AFTER_RECEIVE_METRIC_TONS" text COLLATE "pg_catalog"."default",
  "BARGE_RECEIVE_KLOBS" text COLLATE "pg_catalog"."default",
  "BARGE_RECEIVE_KL15" text COLLATE "pg_catalog"."default",
  "BARGE_RECEIVE_METRIC_TONS" text COLLATE "pg_catalog"."default",
  "LOADING_LOSS_R1_KLOBS" text COLLATE "pg_catalog"."default",
  "LOADING_LOSS_R1_KL15" text COLLATE "pg_catalog"."default",
  "LOADING_LOSS_R1_METRIC_TONS" text COLLATE "pg_catalog"."default",
  "TRANSPORTATION_LOSS_R2_KLOBS" text COLLATE "pg_catalog"."default",
  "TRANSPORTATION_LOSS_R2_KL15" text COLLATE "pg_catalog"."default",
  "TRANSPORTATION_LOSS_R2_METRIC_TONS" text COLLATE "pg_catalog"."default",
  "DISCHARGE_LOSS_R3_KLOBS" text COLLATE "pg_catalog"."default",
  "DISCHARGE_LOSS_R3_KL15" text COLLATE "pg_catalog"."default",
  "DISCHARGE_LOSS_R3_METRIC_TONS" text COLLATE "pg_catalog"."default",
  "SUPPLY_LOSS_R4_KLOBS" text COLLATE "pg_catalog"."default",
  "SUPPLY_LOSS_R4_KL15" text COLLATE "pg_catalog"."default",
  "SUPPLY_LOSS_R4_METRIC_TONS" text COLLATE "pg_catalog"."default",
  "SF_QUANTITY_METRICTON	" text COLLATE "pg_catalog"."default",
  "SF_SHORE_RECEIVED_KLOBS" text COLLATE "pg_catalog"."default",
  "SF_SHORE_RECEIVED_KL15" text COLLATE "pg_catalog"."default",
  "SF_SHORE_RECEIVED_BBLS" text COLLATE "pg_catalog"."default",
  "SF_SHORE_RECEIVED_LONGTON" text COLLATE "pg_catalog"."default",
  "SF_SHORE_RECEIVED_METRICTON" text COLLATE "pg_catalog"."default",
  "SF_STU" text COLLATE "pg_catalog"."default",
  "SF_DENSITY_15C" text COLLATE "pg_catalog"."default",
  "SFAL_VS_SF_KLOBS" text COLLATE "pg_catalog"."default",
  "SFAL_VS_SF_KL15" text COLLATE "pg_catalog"."default",
  "SFAL_VS_SF_BBLS" text COLLATE "pg_catalog"."default",
  "SFAL_VS_SF_LONGTON" text COLLATE "pg_catalog"."default",
  "SFAL_VS_SF_METRICTON" text COLLATE "pg_catalog"."default",
  "SFBD_VS_SR_KLOBS" text COLLATE "pg_catalog"."default",
  "SFBD_VS_SR_KL15" text COLLATE "pg_catalog"."default",
  "SFBD_VS_SR_BBLS" text COLLATE "pg_catalog"."default",
  "SFBD_VS_SR_LONGTON" text COLLATE "pg_catalog"."default",
  "SFBD_VS_SR_METRICTON" text COLLATE "pg_catalog"."default",
  "SR_VS_BOL_KLOBS" text COLLATE "pg_catalog"."default",
  "SR_VS_BOL_KL15" text COLLATE "pg_catalog"."default",
  "SR_VS_BOL_BBLS" text COLLATE "pg_catalog"."default",
  "SR_VS_BOL_LONGTON" text COLLATE "pg_catalog"."default",
  "SR_VS_BOL_METRICTON" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of FORM_ENTRY_FIELD
-- ----------------------------
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES (23, '', 'IWO/001', '["LOI\/001","LOI\/002"]', '["VOYAGE.001","VOY\/002"]', 'TANJUNG PRIUK', '["on"]', '["on"]', NULL, NULL, '["KONTRAK\/001","KONTRAK\/002"]', '["HSO"]', '2018-04-18', '00:00:00', NULL, NULL, 'FO/001', NULL, '', 'single_port', '["50","50"]', NULL, NULL, NULL, NULL, '', NULL, NULL, '00:00:00', '2018-04-18', '00:00:00', NULL, NULL, '[""]', '110', 'multi_client', NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, 'single_product', NULL, NULL, NULL, NULL, '2018-04-17', '', 'no', 'no', '00:00:00', NULL, NULL, NULL, '2018-04-20', '', NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, '320', '102', '567', '543', NULL, NULL, NULL, '-Infinity', '-5.867256637168142', '', NULL, NULL, '2018-04-16', '00:00:00', '421', '', 'no', NULL, '-1.1849710982658959', '00:00:00', NULL, '100', '320', '', NULL, '2018-04-16', '', 14, NULL, NULL, '00:00:00', NULL, '00:00:00', '421', '320', '0.2013888888888889', '765', NULL, '2018-04-20', '00:00:00', '', NULL, NULL, NULL, NULL, '654', NULL, '', NULL, '-3.022421524663677', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, NULL, '00:00:00', '200', '100', '00:00:00', '00:00:00', NULL, NULL, '200', NULL, NULL, '', '', '', '', '320', '210', NULL, NULL, '', '', '403', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-04-16 10:31:07', NULL, NULL, 'admin', NULL, NULL, '65645', '432', '654', '344', '463', '230', NULL, '563', NULL, NULL, '876', NULL, NULL, '00:00:00', NULL, '', '432', '00:00:00', '112', NULL, NULL, '', '', NULL, NULL, '-Infinity', '-5.867256637168142', '00:00:00', '00:00:00', '-1.1849710982658959', '410', NULL, NULL, '', '', '0.2013888888888889', '00:00:00', '00:00:00', '-3.022421524663677', '', '', 'Y', NULL, NULL, NULL, '["AGUS","AGUS"]', '""', '""', '""', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PELNI001', 0, '["CLIENT001","KONTRAK\/002"]', '34', '4523', '233', '665', '7856', '756', '776', '765', '345', '897', '754', '654', '765', '345', '643', '563', '123', '190', '567', '765', '678', '786', '321', '543', '542', '432', '120', '346', '113', '', '432', '223', '543', '456', '123', '654', '110', '230', '234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES (26, 'No Condition', 'IWO/001', '["LOI\/001","LOI\/002"]', '["VOYAGE\/001","VOY\/002"]', 'TANJUNG PRIUK', '["on"]', '["on"]', NULL, NULL, '["KONTRAK\/001","KONTRAK\/002"]', '["HSO"]', '2018-04-18', '00:00:00', NULL, NULL, 'FO/001', NULL, '', 'single_port', '["50","50"]', NULL, NULL, NULL, NULL, '', NULL, NULL, '00:00:00', '2018-04-18', '00:00:00', NULL, NULL, '[""]', '110', 'multi_client', NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, 'single_product', NULL, NULL, NULL, NULL, '2018-04-17', '', 'no', 'no', '00:00:00', NULL, NULL, NULL, '2018-04-20', '', NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, '320', '102', '567', '543', NULL, NULL, NULL, '-Infinity', '-5.867256637168142', '', NULL, NULL, '2018-04-16', '00:00:00', '421', '', 'no', NULL, '-1.1849710982658959', '00:00:00', NULL, '100', '320', '', NULL, '2018-04-16', '', 14, NULL, NULL, '00:00:00', NULL, '00:00:00', '421', '320', '0.2013888888888889', '765', NULL, '2018-04-20', '00:00:00', '', NULL, NULL, NULL, NULL, '654', NULL, '', NULL, '-3.022421524663677', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, NULL, '00:00:00', '200', '100', '00:00:00', '00:00:00', NULL, NULL, '200', NULL, NULL, '', '', '', '', '320', '210', NULL, NULL, '', '', '403', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-04-16 10:50:31', NULL, NULL, 'admin', NULL, NULL, '65645', '432', '654', '344', '463', '230', NULL, '563', NULL, NULL, '876', NULL, NULL, '00:00:00', NULL, '', '432', '00:00:00', '112', NULL, NULL, '', '', NULL, NULL, '-Infinity', '-5.867256637168142', '00:00:00', '00:00:00', '-1.1849710982658959', '410', NULL, NULL, '', '', '0.2013888888888889', '00:00:00', '00:00:00', '-3.022421524663677', '', '', 'Y', NULL, NULL, NULL, '["AGUS","INDRA"]', '""', '""', '""', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PELNI001', 0, '["CLIENT001","KONTRAK\/002"]', '34', '4523', '233', '665', '7856', '756', '776', '765', '345', '897', '754', '654', '765', '345', '643', '563', '123', '190', '567', '765', '678', '786', '321', '543', '542', '432', '120', '346', '113', '', '432', '223', '543', '456', '123', '654', '110', '230', '234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES (27, 'No Condition', 'IWO/001', '["LOI\/001","LOI\/002"]', '["VOYAGE\/001","VOY\/002"]', 'TANJUNG PRIUK', '["on"]', '["on"]', NULL, NULL, '["KONTRAK\/001","KONTRAK\/002"]', '["HSO"]', '2018-04-18', '00:00:00', NULL, NULL, 'FO/001', NULL, '', 'single_port', '["50","50"]', NULL, NULL, NULL, NULL, '', NULL, NULL, '00:00:00', '2018-04-18', '00:00:00', NULL, NULL, '[""]', '110', 'multi_client', NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, 'single_product', NULL, NULL, NULL, NULL, '2018-04-17', '', 'no', 'no', '00:00:00', NULL, NULL, NULL, '2018-04-20', '', NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, '320', '102', '567', '543', NULL, NULL, NULL, '-5.954545454545454', '-5.867256637168142', '', NULL, NULL, '2018-04-16', '00:00:00', '421', '', 'no', NULL, '-1.1849710982658959', '00:00:00', NULL, '100', '320', '', NULL, '2018-04-16', '', 14, NULL, NULL, '00:00:00', NULL, '00:00:00', '421', '320', '0.2013888888888889', '765', NULL, '2018-04-20', '00:00:00', '', NULL, NULL, NULL, NULL, '654', NULL, '', NULL, '-3.022421524663677', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, NULL, '00:00:00', '200', '100', '00:00:00', '00:00:00', NULL, NULL, '200', NULL, NULL, '', '', '', '', '320', '210', NULL, NULL, '', '', '403', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-04-16 11:10:31', NULL, NULL, 'admin', NULL, NULL, '65645', '432', '654', '344', '463', '230', NULL, '563', NULL, NULL, '876', NULL, NULL, '00:00:00', NULL, '', '432', '00:00:00', '112', NULL, NULL, '', '', NULL, NULL, '-5.954545454545454', '-5.867256637168142', '00:00:00', '00:00:00', '-1.1849710982658959', '410', NULL, NULL, '', '', '0.2013888888888889', '00:00:00', '00:00:00', '-3.022421524663677', '', '', 'Y', NULL, NULL, NULL, '["AGUS","INDRA"]', '""', '""', '""', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PELNI001', 0, '["CLIENT001","KONTRAK\/002"]', '34', '4523', '233', '665', '7856', '756', '776', '765', '345', '897', '754', '654', '765', '345', '643', '563', '123', '190', '567', '765', '678', '786', '321', '543', '542', '432', '120', '346', '113', '110', '432', '223', '543', '456', '123', '654', '110', '230', '234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES (25, 'No Condition', 'IWO/001', '["LOI\/001","LOI\/002"]', '["VOYAGE.001","VOY\/002"]', 'TANJUNG PRIUK', '["on"]', '["on"]', NULL, NULL, '["KONTRAK\/001","KONTRAK\/002"]', '["HSO"]', '2018-04-18', '00:00:00', NULL, NULL, 'FO/001', NULL, '', 'single_port', '["50","50"]', NULL, NULL, NULL, NULL, '', NULL, NULL, '00:00:00', '2018-04-18', '00:00:00', NULL, NULL, '[""]', '110', 'multi_client', NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, 'single_product', NULL, NULL, NULL, NULL, '2018-04-17', '', 'no', 'no', '00:00:00', NULL, NULL, NULL, '2018-04-20', '', NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, '320', '102', '567', '543', NULL, NULL, NULL, '-Infinity', '-5.867256637168142', '', NULL, NULL, '1970-01-01', '00:00:00', '421', '', 'no', NULL, '-1.1849710982658959', '00:00:00', NULL, '100', '320', '', NULL, '2018-04-16', '', 14, NULL, NULL, '00:00:00', NULL, '00:00:00', '421', '320', '0.2013888888888889', '765', NULL, '2018-04-20', '00:00:00', '', NULL, NULL, NULL, NULL, '654', NULL, '', NULL, '-3.022421524663677', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, NULL, '00:00:00', '200', '100', '00:00:00', '00:00:00', NULL, NULL, '200', NULL, NULL, '', '', '', '', '320', '210', NULL, NULL, '', '', '403', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-04-16 10:42:56', NULL, NULL, 'admin', NULL, NULL, '65645', '432', '654', '344', '463', '230', NULL, '563', NULL, NULL, '876', NULL, NULL, '00:00:00', NULL, '', '432', '00:00:00', '112', NULL, NULL, '', '', NULL, NULL, '-Infinity', '-5.867256637168142', '00:00:00', '00:00:00', '-1.1849710982658959', '410', NULL, NULL, '', '', '0.2013888888888889', '00:00:00', '00:00:00', '-3.022421524663677', '', '', 'Y', NULL, NULL, NULL, '["AGUS","AGUS"]', '""', '""', '""', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PELNI001', 0, '["CLIENT001","KONTRAK\/002"]', '34', '4523', '233', '665', '7856', '756', '776', '765', '345', '897', '754', '654', '765', '345', '643', '563', '123', '190', '567', '765', '678', '786', '321', '543', '542', '432', '120', '346', '113', '', '432', '223', '543', '456', '123', '654', '110', '230', '234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES (28, 'No Condition', 'IWO/001', '["LOI\/001","LOI\/002"]', '["VOYAGE\/001","VOY\/002"]', 'TANJUNG PRIUK', '["on"]', '["on"]', NULL, NULL, '["KONTRAK\/001","KONTRAK\/002"]', '["HSO"]', '2018-04-18', '00:00:00', NULL, NULL, 'FO/001', NULL, '', 'single_port', '["50","50"]', NULL, NULL, NULL, NULL, '', NULL, NULL, '00:00:00', '2018-04-18', '00:00:00', NULL, NULL, '[""]', '110', 'multi_client', NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, 'single_product', NULL, NULL, NULL, NULL, '2018-04-17', '', 'yes', 'yes', '00:00:00', NULL, NULL, NULL, '2018-04-20', '', NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, '320', '102', '567', '543', NULL, NULL, NULL, '-5.954545454545454', '-5.867256637168142', '', NULL, NULL, '2018-04-16', '00:00:00', '421', '', 'yes', NULL, '-1.1849710982658959', '00:00:00', NULL, '100', '320', '', NULL, '2018-04-16', '', 14, NULL, NULL, '00:00:00', NULL, '00:00:00', '421', '320', '0.2013888888888889', '765', NULL, '2018-04-20', '00:00:00', '', NULL, NULL, NULL, NULL, '654', NULL, '', NULL, '-3.022421524663677', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, NULL, '00:00:00', '200', '100', '00:00:00', '00:00:00', NULL, NULL, '200', NULL, NULL, '', '', '', '', '320', '210', NULL, NULL, '', '', '403', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-04-16 11:17:24', NULL, NULL, 'admin', NULL, NULL, '65645', '432', '654', '344', '463', '230', NULL, '563', NULL, NULL, '876', NULL, NULL, '00:00:00', NULL, '', '432', '00:00:00', '112', NULL, NULL, '', '', NULL, NULL, '-5.954545454545454', '-5.867256637168142', '00:00:00', '00:00:00', '-1.1849710982658959', '410', NULL, NULL, '', '', '0.2013888888888889', '00:00:00', '00:00:00', '-3.022421524663677', '', '', 'Y', NULL, NULL, '["Penguins.jpg","Lighthouse1.jpg"]', '["AGUS","INDRA"]', '"Tulips1.jpg"', '"Chrysanthemum1.jpg"', '"Lighthouse2.jpg"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PELNI001', 0, '["CLIENT001","KONTRAK\/002"]', '34', '4523', '233', '665', '7856', '756', '776', '765', '345', '897', '754', '654', '765', '345', '643', '563', '123', '190', '567', '765', '678', '786', '321', '543', '542', '432', '120', '346', '113', '110', '432', '223', '543', '456', '123', '654', '110', '230', '234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES (29, 'No Condition', 'IWO/001', '["LOI\/001","LOI\/002"]', '["VOYAGE\/001","VOY\/002"]', 'TANJUNG PRIUK', '["on"]', '["on"]', NULL, NULL, '["KONTRAK\/001","KONTRAK\/002"]', '["HSO"]', '2018-04-18', '00:00:00', NULL, NULL, 'FO/001', NULL, '', 'single_port', '["50","50"]', NULL, NULL, NULL, NULL, '', NULL, NULL, '00:00:00', '2018-04-18', '00:00:00', NULL, NULL, '[""]', '110', 'multi_client', NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, 'single_product', NULL, NULL, NULL, NULL, '2018-04-17', '', 'no', 'no', '00:00:00', NULL, NULL, NULL, '2018-04-20', '', NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, '320', '102', '567', '543', NULL, NULL, NULL, '-5.954545454545454', '-5.867256637168142', '', NULL, NULL, '2018-04-16', '00:00:00', '421', '', 'no', NULL, '-1.1849710982658959', '00:00:00', NULL, '100', '320', '', NULL, '2018-04-16', '', 14, NULL, NULL, '00:00:00', NULL, '00:00:00', '421', '320', '0.2013888888888889', '765', NULL, '2018-04-20', '00:00:00', '', NULL, NULL, NULL, NULL, '654', NULL, '', NULL, '-3.022421524663677', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, NULL, '00:00:00', '200', '100', '00:00:00', '00:00:00', NULL, NULL, '200', NULL, NULL, '', '', '', '', '320', '210', NULL, NULL, '', '', '403', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-04-16 11:34:53', NULL, NULL, 'admin', NULL, NULL, '65645', '432', '654', '344', '463', '230', NULL, '563', NULL, NULL, '876', NULL, NULL, '00:00:00', NULL, '', '432', '00:00:00', '112', NULL, NULL, '', '', NULL, NULL, '-5.954545454545454', '-5.867256637168142', '00:00:00', '00:00:00', '-1.1849710982658959', '410', NULL, NULL, '', '', '0.2013888888888889', '00:00:00', '00:00:00', '-3.022421524663677', '', '', 'Y', NULL, NULL, NULL, '["AGUS","INDRA"]', '""', '""', '""', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PELNI001', 0, '["CLIENT001","KONTRAK\/002"]', '34', '4523', '233', '665', '7856', '756', '776', '765', '345', '897', '754', '654', '765', '345', '643', '563', '123', '190', '567', '765', '678', '786', '321', '543', '542', '432', '120', '346', '113', '110', '432', '223', '543', '456', '123', '654', '110', '230', '234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES (24, '', 'IWO/001', '["LOI\/001","LOI\/002"]', '["VOYAGE.001","VOY\/002"]', 'TANJUNG PRIUK', '["on"]', '["on"]', NULL, NULL, '["KONTRAK\/001","KONTRAK\/002"]', '["HSO"]', '2018-04-18', '00:00:00', NULL, NULL, 'FO/001', NULL, '', 'single_port', '["50","50"]', NULL, NULL, NULL, NULL, '', NULL, NULL, '00:00:00', '2018-04-18', '00:00:00', NULL, NULL, '[""]', '110', 'multi_client', NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, 'single_product', NULL, NULL, NULL, NULL, '2018-04-17', '', 'no', 'no', '00:00:00', NULL, NULL, NULL, '2018-04-20', '', NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, '320', '102', '567', '543', NULL, NULL, NULL, '-Infinity', '-5.867256637168142', '', NULL, NULL, '1970-01-01', '00:00:00', '421', '', 'no', NULL, '-1.1849710982658959', '00:00:00', NULL, '100', '320', '', NULL, '2018-04-16', '', 14, NULL, NULL, '00:00:00', NULL, '00:00:00', '421', '320', '0.2013888888888889', '765', NULL, '2018-04-20', '00:00:00', '', NULL, NULL, NULL, NULL, '654', NULL, '', NULL, '-3.022421524663677', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, NULL, '00:00:00', '200', '100', '00:00:00', '00:00:00', NULL, NULL, '200', NULL, NULL, '', '', '', '', '320', '210', NULL, NULL, '', '', '403', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-04-16 10:36:11', NULL, NULL, 'admin', NULL, NULL, '65645', '432', '654', '344', '463', '230', NULL, '563', NULL, NULL, '876', NULL, NULL, '00:00:00', NULL, '', '432', '00:00:00', '112', NULL, NULL, '', '', NULL, NULL, '-Infinity', '-5.867256637168142', '00:00:00', '00:00:00', '-1.1849710982658959', '410', NULL, NULL, '', '', '0.2013888888888889', '00:00:00', '00:00:00', '-3.022421524663677', '', '', 'Y', NULL, NULL, NULL, '["AGUS","AGUS"]', '""', '""', '""', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PELNI001', 0, '["CLIENT001","KONTRAK\/002"]', '34', '4523', '233', '665', '7856', '756', '776', '765', '345', '897', '754', '654', '765', '345', '643', '563', '123', '190', '567', '765', '678', '786', '321', '543', '542', '432', '120', '346', '113', '', '432', '223', '543', '456', '123', '654', '110', '230', '234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES (30, 'No Condition', 'IWO/001', '["LOI\/001","LOI\/002"]', '["VOYAGE\/001","VOY\/002"]', 'TANJUNG PRIUK', '["on"]', '["on"]', NULL, NULL, '["KONTRAK\/001","KONTRAK\/002"]', '["HSO"]', '2018-04-18', '00:00:00', NULL, NULL, 'FO/001', NULL, '', 'single_port', '["50","50"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00:00:00', '2018-04-18', '00:00:00', NULL, NULL, '[""]', '110', 'multi_client', NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, 'single_product', NULL, NULL, NULL, NULL, '2018-04-17', '', 'no', 'no', '00:00:00', NULL, NULL, NULL, '2018-04-20', '', NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, '320', '102', '567', '543', NULL, NULL, NULL, '-5.954545454545454', '-5.867256637168142', '', NULL, NULL, '2018-04-16', '00:00:00', '421', '', 'no', NULL, '-1.1849710982658959', '00:00:00', NULL, '100', '320', NULL, NULL, '2018-04-16', '', 14, NULL, NULL, '00:00:00', NULL, '00:00:00', '421', '320', '0.2013888888888889', '765', NULL, '2018-04-20', '00:00:00', '', NULL, NULL, NULL, NULL, '654', NULL, '', NULL, '-3.022421524663677', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, NULL, '00:00:00', '200', '100', '00:00:00', '00:00:00', NULL, NULL, '200', NULL, NULL, '', '', '', '', '320', '210', NULL, NULL, '', '', '403', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-04-16 14:12:14', NULL, NULL, 'admin', NULL, NULL, '65645', '432', '654', '344', '463', '230', NULL, '563', NULL, NULL, '876', NULL, NULL, '00:00:00', NULL, '', '432', '00:00:00', '112', NULL, NULL, '', '', NULL, NULL, '-5.954545454545454', '-5.867256637168142', '00:00:00', '00:00:00', '-1.1849710982658959', '410', NULL, NULL, '', '', '0.2013888888888889', '00:00:00', '00:00:00', '-3.022421524663677', '', '', 'Y', NULL, NULL, NULL, '["AGUS","INDRA"]', '""', '""', '""', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PELNI001', 0, '["CLIENT001","KONTRAK\/002"]', '34', '4523', '233', '665', '7856', '756', '776', '765', '345', '897', '754', '654', '765', '345', '643', '563', '123', '190', '567', '765', '678', '786', '321', '543', '542', '432', '120', '346', '113', '110', '432', '223', '543', '456', '123', '654', '110', '230', '234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES (31, 'No Condition', '', '["",""]', '["",""]', '', '["on"]', '["on"]', NULL, NULL, '["",""]', '[""]', NULL, '00:00:00', NULL, NULL, '', NULL, '', 'single_port', '["",""]', NULL, NULL, NULL, NULL, 'crude', NULL, NULL, '00:00:00', NULL, '00:00:00', NULL, NULL, '[""]', '110', 'multi_client', NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, 'single_product', NULL, NULL, NULL, NULL, NULL, '', 'no', 'no', '00:00:00', NULL, NULL, NULL, '2018-04-20', '', NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, '320', '102', '', '', NULL, NULL, NULL, '1', '1', '', NULL, NULL, NULL, '00:00:00', '', '', 'no', NULL, '1', '00:00:00', NULL, '100', '320', NULL, NULL, NULL, '', 14, NULL, NULL, '00:00:00', NULL, '00:00:00', '', '320', '1', '', NULL, NULL, '00:00:00', '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '1', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, NULL, '00:00:00', '200', '100', '00:00:00', '00:00:00', NULL, NULL, '200', NULL, NULL, '', '', '', '', '320', '210', NULL, NULL, '', '', '403', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-16 14:20:00', NULL, NULL, 'admin', NULL, NULL, '', '', '', '', '', '230', NULL, '', NULL, NULL, '', NULL, NULL, '00:00:00', NULL, '', '432', '00:00:00', '', NULL, NULL, '', '', NULL, NULL, '1', '1', '00:00:00', '00:00:00', '1', '', NULL, NULL, '', '', '1', '00:00:00', '00:00:00', '1', '', '', 'Y', NULL, NULL, NULL, '["",""]', '""', '""', '""', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '["",""]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '321', '543', '542', '432', '120', '346', '113', '110', '432', '223', '543', '456', '123', '654', '110', '230', '234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for HEADER_INFO_CLIENT
-- ----------------------------
DROP TABLE IF EXISTS "public"."HEADER_INFO_CLIENT";
CREATE TABLE "public"."HEADER_INFO_CLIENT" (
  "ID" int4 NOT NULL DEFAULT nextval('"HEADER_INFO_CLIENT_ID_seq"'::regclass),
  "INTERVENTION_ID" text COLLATE "pg_catalog"."default",
  "PRINCIPLE" text COLLATE "pg_catalog"."default",
  "CONTRACT_ID" text COLLATE "pg_catalog"."default",
  "PO" text COLLATE "pg_catalog"."default",
  "RETAIL_REFERENCE" text COLLATE "pg_catalog"."default",
  "PRODUCT_DETAIL" text COLLATE "pg_catalog"."default",
  "FILE_ORDER" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "LOCATION_ID" int4
)
;

-- ----------------------------
-- Records of HEADER_INFO_CLIENT
-- ----------------------------
INSERT INTO "public"."HEADER_INFO_CLIENT" VALUES (2, '3', 'contract', NULL, 'PO/002', '', '["6","7","13","14"]', 'profesional2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."HEADER_INFO_CLIENT" VALUES (3, '3', 'contract', NULL, 'PO/003', '', '["6","7","13","14","9","10"]', 'profesional.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."HEADER_INFO_CLIENT" VALUES (4, '3', 'contract', '1', 'PO/003', '', '["6","7","13","14","9","10"]', 'Screenshot_from_2017-09-25_17-05-057.png', 0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO "public"."HEADER_INFO_CLIENT" VALUES (5, NULL, NULL, NULL, NULL, NULL, 'null', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for INFO_CLIENT
-- ----------------------------
DROP TABLE IF EXISTS "public"."INFO_CLIENT";
CREATE TABLE "public"."INFO_CLIENT" (
  "ID_INFO" int4 NOT NULL DEFAULT nextval('pelni_info_id_info_seq1'::regclass),
  "VESSEL" int4 NOT NULL DEFAULT 0,
  "BARGE" int4 NOT NULL DEFAULT 0,
  "PORT" int4 NOT NULL DEFAULT 0,
  "DATE_LOADING_BARGE" date,
  "DATE_LOADING_CLIENT" date,
  "DEF_TERMINAL" date,
  "DEF_BARGE" date,
  "DEF_SHIP" date,
  "DELIV_ORDER_KL" numeric NOT NULL DEFAULT 0,
  "DELIV_ORDER_KL15" numeric NOT NULL DEFAULT 0,
  "OBQ_KL" numeric NOT NULL DEFAULT 0,
  "OBQ_KL15" numeric NOT NULL DEFAULT 0,
  "BAR_FIG_AFTERLOAD_KL" numeric NOT NULL DEFAULT 0,
  "BAR_FIG_AFTERLOAD_KL15" numeric NOT NULL DEFAULT 0,
  "BAR_FIG_BFDC_KL" numeric NOT NULL DEFAULT 0,
  "BAR_FIG_BFDC_KL15" numeric NOT NULL DEFAULT 0,
  "BAR_FIG_AFDC_KL" numeric NOT NULL DEFAULT 0,
  "BAR_FIG_AFDC_KL15" numeric NOT NULL DEFAULT 0,
  "SHIP_REC_KL" numeric NOT NULL DEFAULT 0,
  "SHIP_REC_KL15" numeric NOT NULL DEFAULT 0,
  "REMARKS" text COLLATE "pg_catalog"."default",
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default",
  "CLIENT_SITE_ID" int4,
  "CLIENT_SITE_NAME" text COLLATE "pg_catalog"."default",
  "HEADER_INFO_CLIENT_ID" int4
)
;

-- ----------------------------
-- Records of INFO_CLIENT
-- ----------------------------
INSERT INTO "public"."INFO_CLIENT" VALUES (2, 26, 1, 6, '2017-02-09', '2017-02-10', '2017-10-10', '2017-10-10', '2017-10-10', 70.000, 69.144, 1, 1, 70.000, 69.144, 70.000, 69.144, 67.000, 69.200, 69.900, 69.016, 'with standard', NULL, '', NULL, NULL, NULL, NULL, 1, 'Pertamina', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (1, 13, 2, 8, '2017-10-27', '2017-10-28', '2017-10-29', '2017-10-30', '2017-10-31', 110.000, 32.443, 424.445, 534.544, 110.000, 65.543, 453.356, 46.554, 54.665, 545.234, 545.765, 86.934, 'data example', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (36, 4, 8, 8, '2017-02-15', '2017-02-17', NULL, NULL, NULL, 110.000, 108.639, 2.171, 2.144, 112.222, 110.834, 112.462, 111.071, 2.410, 2.380, 110.050, 108.688, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (37, 4, 8, 8, '2017-02-17', '2017-02-20', NULL, NULL, NULL, 520.000, 513.711, 2.171, 2.145, 522.256, 515.940, 522.556, 516.236, 2.470, 2.440, 520.040, 513.721, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (38, 5, 9, 8, '2017-02-06', '2017-02-07', NULL, NULL, NULL, 560.000, 552.769, 10.458, 10.323, 570.553, 563.186, 570.322, 562.958, 10.244, 10.112, 560.120, 552.888, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (39, 6, 8, 8, '2017-02-01', '2017-02-02', NULL, NULL, NULL, 255.000, 251.928, 2.745, 2.712, 257.841, 254.735, 258.018, 254.909, 2.923, 2.888, 255.050, 251.977, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (40, 6, 8, 8, '2017-02-09', '2017-02-09', NULL, NULL, NULL, 255.000, 251.857, 2.745, 2.711, 257.785, 254.608, 258.082, 254.901, 3.041, 3.004, 255.050, 251.906, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (41, 6, 8, 8, '2017-02-16', '2017-02-16', NULL, NULL, NULL, 255.000, 252.061, 2.239, 2.213, 257.844, 254.872, 258.080, 255.105, 2.982, 2.948, 255.010, 252.071, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (42, 6, 8, 8, '2017-02-22', '2017-02-23', NULL, NULL, NULL, 255.000, 251.913, 2.745, 2.712, 257.785, 254.665, 258.023, 254.900, 2.982, 2.946, 255.100, 252.012, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (43, 7, 8, 8, '2017-02-07', '2017-02-07', NULL, NULL, NULL, 110.000, 108.769, 3.338, 3.298, 113.395, 112.029, 113.454, 112.087, 3.399, 3.358, 110.100, 108.774, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (44, 8, 8, 8, '2017-02-10', '2017-02-12', NULL, NULL, NULL, 420.000, 414.823, 2.745, 2.711, 422.804, 417.593, 423.104, 417.889, 3.041, 3.004, 420.000, 414.823, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (45, 8, 8, 8, '2017-02-24', '2017-02-25', NULL, NULL, NULL, 420.000, 415.252, 3.338, 3.300, 423.421, 418.635, 423.720, 418.930, 3.634, 3.593, 420.100, 415.351, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (46, 9, 9, 8, '2017-02-09', '2017-02-11', NULL, NULL, NULL, 565.000, 558.036, 10.707, 10.575, 575.781, 568.684, 576.244, 569.141, 11.203, 11.065, 565.130, 558.165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (27, 26, 5, 6, '2017-02-18', '2017-02-20', NULL, NULL, NULL, 33.000, 32.557, 0, 0, 33.000, 32.557, 33.000, 32.557, 0.000, 0.000, 33.060, 32.617, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (28, 26, 6, 6, '2017-02-23', '2017-02-24', NULL, NULL, NULL, 75.000, 74.051, 0, 0, 75.000, 74.051, 75.000, 74.051, 0.000, 0.000, 75.150, 74.199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (29, 27, 7, 6, '2017-02-08', '2017-02-09', NULL, NULL, NULL, 30.000, 29.617, 0, 0, 30.000, 29.617, 30.000, 29.617, 0.000, 0.000, 30.060, 29.676, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (30, 27, 0, 7, '1970-01-01', '2017-01-27', NULL, NULL, NULL, 65.000, 64.373, 0, 0, 0, 0, 0, 0, 0, 0, 65.000, 64.373, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (31, 27, 0, 7, '1970-01-01', '2017-02-05', NULL, NULL, NULL, 75.000, 74.098, 0, 0, 0, 0, 0, 0, 0, 0, 74.960, 74.059, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (32, 27, 0, 7, '1970-01-01', '2017-02-17', NULL, NULL, NULL, 40.000, 39.521, 0, 0, 0, 0, 0, 0, 0, 0, 40.000, 39.521, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (33, 3, 0, 7, '1970-01-01', '2017-02-03', NULL, NULL, NULL, 27.000, 26.676, 0, 0, 0, 0, 0, 0, 0, 0, 27.000, 26.676, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (34, 4, 8, 8, '2017-02-01', '2017-02-02', NULL, NULL, NULL, 110.000, 108.675, 2.772, 2.739, 112.823, 111.464, 113.062, 111.700, 3.012, 2.976, 110.045, 108.719, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (35, 4, 1, 8, '2017-02-04', '2017-02-05', NULL, NULL, NULL, 520.000, 513.287, 3.338, 3.295, 523.390, 516.632, 523.690, 516.928, 3.634, 3.587, 520.050, 513.335, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (47, 9, 9, 8, '2017-02-23', '2017-02-25', NULL, NULL, NULL, 565.000, 558.162, 12.136, 11.989, 577.233, 570.246, 577.691, 570.699, 12.659, 12.506, 565.060, 558.221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (48, 9, 9, 8, '2017-02-13', '2017-02-14', NULL, NULL, NULL, 550.000, 543.264, 11.444, 11.304, 561.497, 554.620, 561.729, 554.849, 11.651, 11.508, 550.060, 543.323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (49, 10, 9, 8, '2017-02-27', '2017-03-01', NULL, NULL, NULL, 550.000, 543.343, 11.244, 11.108, 561.330, 554.536, 561.562, 554.765, 11.475, 11.336, 550.040, 543.383, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (50, 11, 9, 8, '2017-02-20', '2017-02-21', NULL, NULL, NULL, 660.000, 652.011, 10.463, 10.336, 670.533, 662.417, 670.725, 662.607, 10.664, 10.535, 660.000, 652.011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (51, 12, 0, 9, '1900-01-01', '2017-02-01', NULL, NULL, NULL, 230.000, 227.217, 0, 0, 0, 0, 0, 0, 0, 0, 230.388, 227.600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (52, 13, 0, 9, '1900-01-01', '2017-02-04', NULL, NULL, NULL, 455.000, 450.228, 0, 0, 0, 0, 0, 0, 0, 0, 455.285, 450.510, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (53, 13, 0, 9, '1900-01-01', '2017-02-17', NULL, NULL, NULL, 460.000, 455.176, 0, 0, 0, 0, 0, 0, 0, 0, 459.568, 454.748, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (54, 14, 0, 9, '1900-01-01', '2017-02-04', NULL, NULL, NULL, 156.000, 154.241, 0, 0, 0, 0, 0, 0, 0, 0, 155.353, 153.602, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (55, 15, 0, 9, '1900-01-01', '2017-02-15', NULL, NULL, NULL, 450.000, 444.555, 0, 0, 0, 0, 0, 0, 0, 0, 450.100, 444.654, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (56, 16, 0, 9, '1900-01-01', '2017-02-23', NULL, NULL, NULL, 30.000, 29.662, 0, 0, 0, 0, 0, 0, 0, 0, 29.920, 29.583, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (57, 17, 10, 11, '2017-02-08', '2017-02-13', NULL, NULL, NULL, 85.000, 83.973, 21.373, 21.115, 106.195, 104.912, 105.992, 104.712, 20.836, 20.584, 85.070, 84.042, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (58, 18, 11, 10, '2017-02-01', '2017-02-02', NULL, NULL, NULL, 175.000, 172.970, 17.157, 16.958, 288.336, 284.991, 309.490, 305.900, 134.317, 132.759, 175.100, 173.069, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (73, 12, 5, 8, '2017-10-29', '2017-10-30', '2017-10-31', '2017-11-01', '2017-11-02', 132.415, 14.232, 14.232, 15.241, 13.142, 15.243, 13.213, 14.231, 13.241, 15.241, 13.121, 14.231, 'ngetes sama upload banyak', '2017-10-29 16:17:03', 'admin', NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (59, 18, 11, 10, '2017-02-14', '2017-02-16', NULL, NULL, NULL, 175.000, 172.970, 29.008, 28.672, 216.123, 213.616, 257.881, 254.890, 82.768, 81.808, 175.100, 173.069, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (60, 19, 12, 10, '2017-02-02', '2017-02-02', NULL, NULL, NULL, 615.000, 607.866, 0.000, 0.000, 615.179, 608.043, 615.222, 608.085, 0.000, 0.000, 615.150, 608.014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (61, 15, 12, 10, '2017-02-03', '2017-02-03', NULL, NULL, NULL, 446.000, 440.826, 0.000, 0.000, 446.093, 440.918, 446.232, 441.056, 0.000, 0.000, 446.100, 440.925, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (62, 17, 11, 10, '2017-02-03', '2017-02-06', NULL, NULL, NULL, 130.000, 128.492, 40.335, 39.867, 282.363, 279.088, 282.345, 279.070, 152.183, 150.418, 129.985, 128.477, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (63, 21, 12, 10, '2017-02-07', '2017-02-08', NULL, NULL, NULL, 660.000, 652.344, 0.000, 0.000, 660.112, 652.455, 660.196, 652.538, 0.000, 0.000, 660.000, 652.344, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (64, 11, 12, 10, '2017-02-09', '2017-02-09', NULL, NULL, NULL, 660.000, 652.344, 0.000, 0.000, 660.104, 652.447, 660.108, 652.451, 0.000, 0.000, 660.020, 652.354, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (65, 23, 11, 10, '2017-02-07', '2017-02-08', NULL, NULL, NULL, 158.000, 156.167, 120.616, 119.217, 278.617, 275.358, 257.006, 254.025, 98.967, 97.819, 158.100, 157.452, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (66, 23, 13, 10, '2017-02-21', '2017-02-22', NULL, NULL, NULL, 158.000, 156.167, 18.096, 17.886, 363.478, 379.030, 382.141, 377.708, 224.083, 221.484, 158.000, 156.167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (67, 7, 13, 10, '2017-02-21', '2017-02-22', NULL, NULL, NULL, 107.000, 105.759, 18.096, 17.886, 363.478, 379.030, 224.083, 221.484, 116.972, 115.615, 107.000, 105.759, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (68, 25, 13, 10, '2017-02-21', '2017-02-23', NULL, NULL, NULL, 100.000, 98.840, 18.096, 17.886, 363.478, 379.030, 211.013, 208.565, 109.735, 108.462, 99.810, 98.652, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (69, 21, 12, 10, '2017-02-22', '2017-02-22', NULL, NULL, NULL, 660.000, 652.344, 0.000, 0.000, 660.071, 652.414, 660.185, 652.527, 0.000, 0.000, 660.000, 652.344, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (70, 16, 11, 10, '2017-02-25', '2017-02-25', NULL, NULL, NULL, 285.000, 281.694, 60.111, 59.414, 456.119, 450.828, 456.028, 450.738, 170.893, 168.911, 285.000, 281.694, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (71, 22, 13, 11, '1970-01-01', '1970-01-01', '1970-01-01', '1970-01-01', '1970-01-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ok null', NULL, '', NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (72, 12, 12, 10, '2017-10-30', '2017-11-01', '2017-11-02', '2017-11-03', '2017-11-04', 12.345, 12.344, 51.423, 51.423, 32.415, 31.525, 31.524, 51.423, 34.152, 13.425, 13.245, 21.354, 'ngetes edit dari system', NULL, '', NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (78, 3, 4, 6, '2017-11-26', '2017-11-28', '2017-11-26', '2017-11-27', '2017-11-28', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'tesssssssssssssssssssssssssssssssssssssst', '2017-11-26 02:38:28', 'admin', NULL, NULL, NULL, NULL, 3, 'Pelni', NULL);
INSERT INTO "public"."INFO_CLIENT" VALUES (79, 0, 0, 0, '1970-01-01', '1970-01-01', '1970-01-01', '1970-01-01', '1970-01-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '2017-11-26 19:28:40', 'admin', NULL, NULL, NULL, NULL, 3, 'Pelni', 4);
INSERT INTO "public"."INFO_CLIENT" VALUES (81, 26, 1, 6, '2017-02-09', '2017-02-10', '2017-10-10', '2017-10-10', '2017-10-10', 70.000, 69.144, 1, 1, 70.000, 69.144, 70.000, 69.144, 67.000, 69.200, 69.900, 69.016, 'with standard', NULL, '', NULL, NULL, NULL, NULL, 2, 'PLN', NULL);

-- ----------------------------
-- Table structure for KOMPONEN_HTML
-- ----------------------------
DROP TABLE IF EXISTS "public"."KOMPONEN_HTML";
CREATE TABLE "public"."KOMPONEN_HTML" (
  "ID" int4 NOT NULL DEFAULT nextval('"KOMPONEN_HTML_ID_seq"'::regclass),
  "NAME" text COLLATE "pg_catalog"."default",
  "DATA" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6)
)
;

-- ----------------------------
-- Records of KOMPONEN_HTML
-- ----------------------------
INSERT INTO "public"."KOMPONEN_HTML" VALUES (12, 'spf_crude_discharge', '			<table style="width:900px !important;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:150px;">Ship Figure Before Discharge - TOV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_metricton" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:150px;">Free Water</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_metricton" class="" /></td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:150px;">Remaining On Board Quantity</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_metricton" class="" /></td>
				</tr>
				<tr>
					<td>d)</td>
					<td style="width:150px;">Ship Figure Before Discharge -  GSV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>f)</td>
					<td style="width:150px;">Ship Figure Before Discharge -  NSV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_nsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_nsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_nsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_nsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_nsv_metricton" class="" /></td>
				</tr>
			</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (11, 'spf_crude_loading', '                        <table  style="width:900px !important;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:150px;">Onboard Quantity (OBQ)</td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_klobs" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_kl15" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_bbls" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_longton" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_metricton" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:150px;">Ship''s Figure After Loading (SFAL) - TOV</td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_tov_klobs" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_tov_kl15" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_tov_bbls" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_tov_longton" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_tov_metricton" class="" /></td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:150px;">Free Water</td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_free_water_al_klobs" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_free_water_al_kl15" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_free_water_al_bbls" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_free_water_al_longton" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_free_water_al_metricton" class="" /></td>
				</tr>
				<tr>
					<td>d)</td>
					<td style="width:150px;">Ship''s Figure After Loading (SFAL) - GSV</td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_gsv_klobs" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_gsv_kl15" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_gsv_bbls" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_gsv_longton" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_gsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>e)</td>
					<td style="width:150px;">Ship''s Figure After Loading (SFAL) - NSV</td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_nsv_klobs" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_nsv_kl15" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_nsv_bbls" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_nsv_longton" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_nsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>f)</td>
					<td style="width:150px;">Vessel Experience Factor - Loading (VEF-L)</td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="vefl_klobs" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="vefl_kl15" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="vefl_bbls" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="vefl_longton" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="vefl_metricton" class="" /></td>
				</tr>
				<tr>
					<td>g);</td>
					<td style="width:150px;">Ship''s Loaded (applied VEF-L)</td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_klobs" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_kl15" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_bbls" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_longton" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_metricton" class="" /></td>
				</tr>
			</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (14, 'dpc_product_discharge', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:135px;">Ship''s Loaded vs Bill of Lading (R1)</td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_klobs" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_kl15" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_bbls" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_longton" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_metricton" type="text" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Ship''s Fig. After Loading vs Ship''s Fig. Before Discharge (R2)</td>
					<td><input style="width:100px;" name="sfal_vs_sf_klobs" type="text" class="" /></td>
					<td><input style="width:100px;" name="sfal_vs_sf_kl15" type="text" class="" /></td>
					<td><input style="width:100px;" name="sfal_vs_sf_bbls" type="text" class="" /></td>
					<td><input style="width:100px;" name="sfal_vs_sf_longton" type="text" class="" /></td>
					<td><input style="width:100px;" name="sfal_vs_sf_metricton" type="text" class="" /></td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:135px;">Ship''s Fig. Before Discharge vs Shore Received (R3)</td>
					<td><input style="width:100px;" name="sfbd_vs_sr_klobs" type="text" class="" /></td>
					<td><input style="width:100px;" name="sfbd_vs_sr_kl15" type="text" class="" /></td>
					<td><input style="width:100px;" name="sfbd_vs_sr_bbls" type="text" class="" /></td>
					<td><input style="width:100px;" name="sfbd_vs_sr_longton" type="text" class="" /></td>
					<td><input style="width:100px;" name="sfbd_vs_sr_metricton" type="text" class="" /></td>
				</tr>
				<tr>
					<td>d)</td>
					<td style="width:135px;">Shore Received vs Bill of Lading (R4)</td>
					<td><input style="width:100px;" name="sr_vs_bol_klobs" type="text" class="" /></td>
					<td><input style="width:100px;" name="sr_vs_bol_kl15" type="text" class="" /></td>
					<td><input style="width:100px;" name="sr_vs_bol_bbls" type="text" class="" /></td>
					<td><input style="width:100px;" name="sr_vs_bol_longton" type="text" class="" /></td>
					<td><input style="width:100px;" name="sr_vs_bol_metricton" type="text" class="" /></td>
				</tr>
			</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (13, 'dpc_product_loading', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:135px;">Ship''s Loaded vs Bill of Lading (R1)</td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_klobs" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_kl15" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_bbls" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_longton" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_metricton" type="text" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Ship''s Loaded (VEF applied) vs Bill of Lading (R1)</td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_klobs" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_kl15" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_bbls" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_longton" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_metricton" type="text" class="" /></td>
				</tr>
			</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (16, 'dpc_crude_discharge', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:135px;">Ship''s Loaded vs Bill of Lading (R1)</td>
					<td><input style="width:100px;" type="text" name="slvs_bol_r1_klobs" class="" /></td>
					<td><input style="width:100px;" type="text" name="slvs_bol_r1_kl15" class="" /></td>
					<td><input style="width:100px;" type="text" name="slvs_bol_r1_bbls" class="" /></td>
					<td><input style="width:100px;" type="text" name="slvs_bol_r1_longton" class="" /></td>
					<td><input style="width:100px;" type="text" name="slvs_bol_r1_metricton" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Ship''s Fig. After Loading vs Ship''s Fig. Before Discharge (R2)</td>
					<td><input style="width:100px;" type="text" name="sfal_vs_sfbd_r2_klobs" class="" /></td>
					<td><input style="width:100px;" type="text" name="sfal_vs_sfbd_r2_kl15" class="" /></td>
					<td><input style="width:100px;" type="text" name="sfal_vs_sfbd_r2_bbls" class="" /></td>
					<td><input style="width:100px;" type="text" name="sfal_vs_sfbd_r2_longton" class="" /></td>
					<td><input style="width:100px;" type="text" name="sfal_vs_sfbd_r2_metricton" class="" /></td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:135px;">Ship''s Fig. Before Discharge vs Shore Received (R3)</td>
					<td><input style="width:100px;" type="text" class="" name="sfbd_vs_sr_r3_klobs" /></td>
					<td><input style="width:100px;" type="text" class="" name="sfbd_vs_sr_r3_kl15" /></td>
					<td><input style="width:100px;" type="text" class="" name="sfbd_vs_sr_r3_bbls" /></td>
					<td><input style="width:100px;" type="text" class="" name="sfbd_vs_sr_r3_longton" /></td>
					<td><input style="width:100px;" type="text" class="" name="sfbd_vs_sr_r3_metricton" /></td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:135px;">Shore Received vs Bill of Lading (R4)</td>
					<td><input style="width:100px;" type="text" class="" name="sr_vs_bol_r4_klobs" /></td>
					<td><input style="width:100px;" type="text" class="" name="sr_vs_bol_r4_kl15" /></td>
					<td><input style="width:100px;" type="text" class="" name="sr_vs_bol_r4_bbls" /></td>
					<td><input style="width:100px;" type="text" class="" name="sr_vs_bol_r4_longton" /></td>
					<td><input style="width:100px;" type="text" class="" name="sr_vs_bol_r4_metricton" /></td>
				</tr>
			</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (15, 'dpc_crude_loading', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:135px;">Ship''s Loaded vs Bill of Lading (R1)</td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_klobs" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_kl15" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_bbls" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_longton" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_metricton" type="text" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Ship''s Loaded (VEF applied) vs Bill of Lading (R1)</td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_r1_klobs" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_r1_kl15" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_r1_bbls" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_r1_longton" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_r1_metricton" type="text" class="" /></td>
				</tr>
			</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (2, 'bl_figure_product_discharge', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:135px;">BL Quantity</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_klobs" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_kl15" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_bbls" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_longton" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_metricton" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">BL Figure based on</td>
					<td colspan="5">
						<input type="checkbox" name="bl_flow_meter" value="flow_meter" />
						Flow Meter
						<input type="checkbox" name="bl_shore_tank" value="shore_tank" />
						Shore Tank
						<input type="checkbox" name="bl_ship_tank" value="ship_tank" />
						Ship Tank
					</td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:135px;">Ship''s Figure After Loading (SFAL)</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_sfal_klobs" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_sfal_kl15" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_sfal_bbls" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_sfal_longton" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_sfal_metricton" /></td>
				</tr>
			</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (1, 'bl_figure_product_loading', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td>BL Quantity</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_klobs" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_kl15" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_bbls" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_longton" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_metricton" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td>BL Figure based on</td>
					<td colspan="5">
						<input type="checkbox" name="bl_flow_meter" value="flow_meter" />
						Flow Meter
						<input type="checkbox" name="bl_shore_tank" value="shore_tank" />
						Shore Tank
						<input type="checkbox" name="bl_ship_tank" value="ship_tank" />
						Ship Tank
					</td>
				</tr>
				<tr>
					<td>c)</td>
					<td>density@15°C</td>
					<td colspan="5">
						<input type="text" onkeyup="hitung(this)" style="width:100%;" name="bl_15_derajat_celcius" />
					</td>
				</tr>
			</table> ', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (4, 'bl_figure_crude_discharge', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td colspan="6">BL Quantity</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td colspan="6">Gross Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td colspan="6">Net Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td>BL Figure based on</td>
					<td colspan="10">
						<input type="checkbox" name="bl_flow_meter" value="flow_meter" />
						Flow Meter
						<input type="checkbox" name="bl_shore_tank" value="shore_tank" />
						Shore Tank
						<input type="checkbox" name="bl_ship_tank" value="ship_tank" />
						Ship Tank
					</td>
				</tr>
				<tr>
					<td>c)</td>
					<td colspan="6">Ship''s Figure After Loading (SFAL)</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_metricton" class="" /></td>
				</tr>
			</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (3, 'bl_figure_crude_loading', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td colspan="6">BL Quantity</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td colspan="6">Gross Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td colspan="6">Net Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td>BL Figure based on</td>
					<td colspan="10">
						<input type="checkbox" name="bl_flow_meter" value="flow_meter" />
						Flow Meter
						<input type="checkbox" name="bl_shore_tank" value="shore_tank" />
						Shore Tank
						<input type="checkbox" name="bl_ship_tank" value="ship_tank" />
						Ship Tank
					</td>
				</tr>
				<tr>
					<td>c)</td>
					<td>density@15°C</td>
					<td colspan="10">
						<input onkeyup="hitung(this)" style="width:100%;" type="text" class="" name="bl_15_derajat_celcius" />
					</td>
				</tr>
			</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (6, 'sf_product_discharge', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:135px;">Shore Received</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_shore_received_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_shore_received_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_shore_received_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_shore_received_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_shore_received_metricton" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Shore Tanks Used</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100%;" type="text" name="sf_stu" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">density@15°C</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100%;" type="text" name="sf_density_15c" class="" /></td>
				</tr>
			</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (5, 'sf_product_loading', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:135px;">Shore Quantity</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_quantity_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_quantity_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_quantity_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_quantity_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_quantity_metricton	" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Shore Tanks Nomination</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100%;" type="text" name="st_nomination" class="" /></td>
				</tr>
			</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (8, 'sf_crude_discharge', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:150px;">Shore Quantity</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_metricton" class="" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td style="width:150px;">Gross Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_gsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_gsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_gsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_gsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_gsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td style="width:150px;">Net Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_nsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_nsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_nsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_nsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_nsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:150px;">Ship''s Figure After Loading (SFAL)</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sfal_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sfal_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sfal_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sfal_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sfal_metricton" class="" /></td>
				</tr>
			</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (7, 'sf_crude_loading', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:150px;">Shore Quantity</td>
					<td><!--<input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_klobs" class="" />--></td>
					<td><!--<input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_kl15" class="" />--></td>
					<td><!--<input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_bbls" class="" />--></td>
					<td><!--<input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_longton" class="" />--></td>
					<td><!--<input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_metricton" class="" />--></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td style="width:150px;">Gross Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_gsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_gsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_gsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_gsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_gsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td style="width:150px;">Net Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_nsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_nsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_nsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_nsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_nsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:150px;">Shore Tanks Nomination</td>
					<td colspan="5"><input onkeyup="hitung(this)" type="text" name="sf_shore_tanks_nomination_klobs" class="" /></td>
				</tr>
			</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (10, 'spf_product_discharge', '			<table style="width:900px !important;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td style="width:10px;">a)</td>
					<td style="width:135px;">Ship Figure Before Discharge - TOV</td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_klobs" class="" /></td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_kl15" class="" /></td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_bbls" class="" /></td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_longton" class="" /></td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_metricton" class="" /></td>
				</tr>
				<tr>
					<td style="width:10px;">b)</td>
					<td style="width:135px;">Free Water</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_metricton" class="" /></td>
				</tr>
				<tr>
					<td style="width:10px;">c)</td>
					<td style="width:135px;">Remaining On Board Quantity (ROB)</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_metricton" class="" /></td>
				</tr>
				<tr>
					<td style="width:10px;">d)</td>
					<td style="width:135px;">Ship Figure Before Discharge -  GSV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_metricton" class="" /></td>
				</tr>
			</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (9, 'spf_product_loading', '			<table style="width:900px !important;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td style="width:10px;">a)</td>
					<td style="width:135px;">Onboard Quantity (OBQ)</td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="obq_quantity_klobs" class="" /></td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="obq_quantity_kl15" class="" /></td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="obq_quantity_bbls" class="" /></td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="obq_quantity_longton" class="" /></td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="obq_quantity_metricton" class="" /></td>
				</tr>
				<tr>
					<td style="width:10px;">b)</td>
					<td style="width:135px;">Ship''s Figure After Loading (SFAL) - TOV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_tov_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_tov_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_tov_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_tov_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_tov_metricton" class="" /></td>
				</tr>
				<tr>
					<td style="width:10px;">c)</td>
					<td style="width:135px;">Free Water After Loading</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="fwal_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="fwal_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="fwal_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="fwal_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="fwal_metricton" class="" /></td>
				</tr>
				<tr>
					<td style="width:10px;">d)</td>
					<td style="width:135px;">Ship''s Loaded - GSV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sl_gsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sl_gsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sl_gsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sl_gsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sl_gsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td style="width:10px;">e)</td>
					<td style="width:135px;">Vessel Experience Factor - Loading (VEF-L)</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="vef_loading_bbls" type="text" class="" /></td>
				</tr>
				<tr>
					<td style="width:10px;">f)</td>
					<td style="width:135px;">Ship''s Loaded (applied VEF-L)</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_bbls" type="text" class="" /></td>
				</tr>
			</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (17, 'quantity_crude_loading', '<table>
<tr>
<td>BL Figure</td>
<td>
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
	<thead>
		<tr>
			<th style="width:5;">&nbsp;</th>
			<th style="width:200px;">&nbsp;</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;KL @obs</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;KL @15° C</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;BBLS @60°F</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;Long Ton</th>
			<th>&nbsp;&nbsp;&nbsp;Metric Ton</th>
		</tr>
	</thead>
				<tbody><tr>
					<td>a)</td>
					<td colspan="6" style="width:150px;text-alignment:left">BL Quantity</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td style="width:150px;">Gross Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_gsv_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_gsv_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_gsv_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_gsv_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_gsv_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td style="width:150px;">Net Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_nsv_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_nsv_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_nsv_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_nsv_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_nsv_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td>BL Figure based on</td>
					<td colspan="10">
						<input name="bl_flow_meter" value="Y" type="checkbox">
						Flow Meter
						<input name="bl_shore_tank" value="Y" type="checkbox">
						Shore Tank
						<input name="bl_ship_tank" value="Y" type="checkbox">
						Ship Tank
					</td>
				</tr>
				<tr>
					<td>c)</td>
					<td>density@15°C</td>
					<td colspan="10">
						<input onkeyup="hitung(this)" style="width:100%;" class="" name="bl_15_derajat_celcius" type="text">
					</td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Shore Figure</td>
<td>
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td>a)</td>
					<td style="width:150px;">Shore Quantity</td>
					<td><!--<input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_klobs" class="" />--></td>
					<td><!--<input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_kl15" class="" />--></td>
					<td><!--<input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_bbls" class="" />--></td>
					<td><!--<input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_longton" class="" />--></td>
					<td><!--<input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_metricton" class="" />--></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td style="width:150px;">Gross Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_gsv_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_gsv_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_gsv_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_gsv_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_gsv_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td style="width:150px;">Net Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_nsv_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_nsv_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_nsv_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_nsv_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_nsv_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:150px;">Shore Tanks Nomination</td>
					<td colspan="5"><input onkeyup="hitung(this)" name="sf_shore_tanks_nomination_klobs" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Ship Figure</td>
<td>
<table style="width:900px !important;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td>a)</td>
					<td style="width:150px;">Onboard Quantity (OBQ)</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:150px;">Ship''s Figure After Loading (SFAL) - TOV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_tov_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_tov_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_tov_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_tov_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_tov_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:150px;">Free Water</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_free_water_al_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_free_water_al_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_free_water_al_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_free_water_al_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_free_water_al_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>d)</td>
					<td style="width:150px;">Ship''s Figure After Loading (SFAL) - GSV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_gsv_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_gsv_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_gsv_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_gsv_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_gsv_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>e)</td>
					<td style="width:150px;">Ship''s Figure After Loading (SFAL) - NSV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_nsv_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_nsv_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_nsv_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_nsv_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_nsv_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>f)</td>
					<td style="width:150px;">Vessel Experience Factor - Loading (VEF-L)</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="vefl_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="vefl_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="vefl_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="vefl_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="vefl_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>g)</td>
					<td style="width:150px;">Ship''s Loaded (applied VEF-L)</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_metricton" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Discrepancy</td>
<td>
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td>a)</td>
					<td style="width:150px;">Ship''s Loaded vs Bill of Lading (R1)</td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_klobs" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_kl15" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_bbls" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_longton" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:150px;">Ship''s Loaded (VEF applied) vs Bill of Lading (R1)</td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_r1_klobs" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_r1_kl15" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_r1_bbls" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_r1_longton" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_r1_metricton" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Quality</td>
<td>
			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td style="width:135px;">Sample Source</td>
					<td>
						<input style="width:100%" type="text" class="" name="sample_source" />
					</td>
				</tr>
				<tr>
					<td style="width:135px;">Date of Analysis</td>
					<td>
						<input style="min-width:100px !important;width:100px;" data-date-format="dd/mm/yyyy" type="text" class="datepicker" name="date_of_analysis" />
					</td>
				</tr>
				<tr>
					<td style="width:135px;">Certificate Of Quality</td>
					<td>
						<a style="margin-bottom:2px;" href="javascript:;" class="btn btn-success btn-xs" onclick="add_tb_certificate()"><i class="fa fa-plus"></i></a>
						<table id="tb_certificate" style="width:100%;margin-left:-20px;"></table>
					</td>
				</tr>
			</table>
			<script type="text/javascript">
				function add_tb_certificate() {
					$("#tb_certificate").append("<tr><td><table style=\"width:100%;margin-bottom:2px;\"><tr><td style=\"width:100px;\"><input type=\"file\" name=\"fsoq[]\" /></td><td><a href=\"javascript:;\" onclick=\"delete_tb_certificate(this)\" class=\"btn btn-danger btn-xs\"><i class=\"fa fa-minus\"></i> </a></td></tr></table></td></tr>");
				}

				function delete_tb_certificate(e) {
					$(e).parent().parent().parent().parent().remove();
				}
			</script>

</td>
</tr>
</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (21, 'quantity_crude_bunker_pipe', '<table>
<tr>
<td>Delivery Order (DO)</td>
<td>
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<thead>
				<tr>
					<th style="width:5px;">&nbsp;</th>
					<th style="width:180px;">&nbsp;</th>
					<th style="width:150px;text-align: left;">&nbsp;&nbsp;&nbsp;KL @obsv</th>
					<th style="width:150px;text-align: left;">&nbsp;&nbsp;&nbsp;KL @15° C</th>
					<th style="text-align: left;">&nbsp;&nbsp;Metric Ton</th>
				</tr>
				</thead>
				<tbody>
				<tr>
					<td>a)</td>
					<td style="width:150px;">Initial Readout</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="initial_readout_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="initial_readout_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="initial_readout_metric_tons" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:150px;">Final Readout</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="final_readout_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="final_readout_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="final_readout_metric_tons" class="" type="text"></td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:150px;">Difference</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="difference_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="difference_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="difference_metric_tons" class="" type="text"></td>
				</tr>
				<tr>
					<td>d)</td>
					<td style="width:150px;">Meter Factor</td>
					<td colspan="3"><input onkeyup="hitung(this)" style="width:100px;" name="meter_factor_klobs" class="" type="text"></td>
				</tr>
				<tr>
					<td>e)</td>
					<td style="width:150px;">Cord. Vol.Delivered</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="cord_vol_delivered_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="cord_vol_delivered_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="cord_vol_delivered_metric_tons" class="" type="text"></td>
				</tr>
				<tr>
					<td>f)</td>
					<td style="width:150px;">Density @15deg C</td>
					<td colspan="3"><input onkeyup="hitung(this)" style="width:100px;" name="density15deg_klobs" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Discrepancy</td>
<td>
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td style="width:5px;">e)</td>
					<td style="width:180px;">Supply Loss (R4)</td>
					<td style="width:150px;text-align: left;"><input style="width:100px;" name="supply_loss_klobs" class="" type="text"></td>
					<td style="width:150px;text-align: left;"><input style="width:100px;" name="supply_loss_kl15" class="" type="text"></td>
					<td><input style="width:100px;" name="supply_loss_metric_tons" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Quality</td>
<td>
In Any
</td>
</tr>
</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (20, 'quantity_product_discharge', '<table>
<tr>
<td>BL Figure</td>
<td>
<!-- DIV -->
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
	<thead>
		<tr>
			<th style="width:5px;">&nbsp;</th>
			<th style="width:160px;text-align: left;"></th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;KL @obs</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;KL @15° C</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;BBLS @60°F</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;Long Ton</th>
			<th style="text-align: left;">&nbsp;&nbsp;&nbsp;Metric Ton</th>
		</tr>
	</thead>
				<tbody><tr>
					<td>a)</td>
					<td style="width:135px;">BL Quantity</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_klobs" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_kl15" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_bbls" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_longton" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_metricton" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">BL Figure based on</td>
					<td colspan="5">
						<input name="bl_flow_meter" value="Y" type="checkbox">
						Flow Meter
						<input name="bl_shore_tank" value="Y" type="checkbox">
						Shore Tank
						<input name="bl_ship_tank" value="Y" type="checkbox">
						Ship Tank
					</td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:135px;">Ship''s Figure After Loading (SFAL)</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_sfal_klobs" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_sfal_kl15" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_sfal_bbls" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_sfal_longton" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_sfal_metricton" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Shore Figure</td>
<td>
<!-- DIV -->
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td style="width:5px;">a)</td>
					<td style="width:160px;">Shore Received</td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sf_shore_received_klobs" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sf_shore_received_kl15" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sf_shore_received_bbls" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sf_shore_received_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_shore_received_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Shore Tanks Used</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100%;" name="sf_stu" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">density@15°C</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100%;" name="sf_density_15c" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Ship Figure</td>
<td>
<!-- DIV -->
<table style="width:900px !important;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td style="width:5px;">a)</td>
					<td style="width:160px;">Ship Figure Before Discharge - TOV</td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_tov_klobs" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_tov_kl15" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_tov_bbls" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_tov_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_tov_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td style="width:10px;">b)</td>
					<td style="width:135px;">Free Water</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="free_water_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="free_water_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="free_water_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="free_water_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="free_water_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td style="width:10px;">c)</td>
					<td style="width:135px;">Remaining On Board Quantity (ROB)</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="robq_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="robq_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="robq_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="robq_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="robq_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td style="width:10px;">d)</td>
					<td style="width:135px;">Ship Figure Before Discharge -  GSV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_gsv_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_gsv_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_gsv_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_gsv_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_gsv_metricton" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Discrepancy</td>
<td>
<!-- DIV -->
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td style="width:5px;">a)</td>
					<td style="width:160px;">Ship''s Loaded vs Bill of Lading (R1)</td>
					<td style="width:160px;"><input style="width:100px;" name="sl_vs_bol_r1_klobs" class="" type="text"></td>
					<td style="width:160px;"><input style="width:100px;" name="sl_vs_bol_r1_kl15" class="" type="text"></td>
					<td style="width:160px;"><input style="width:100px;" name="sl_vs_bol_r1_bbls" class="" type="text"></td>
					<td style="width:160px;"><input style="width:100px;" name="sl_vs_bol_r1_longton" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Ship''s Fig. After Loading vs Ship''s Fig. Before Discharge (R2)</td>
					<td><input style="width:100px;" name="sfal_vs_sf_klobs" class="" type="text"></td>
					<td><input style="width:100px;" name="sfal_vs_sf_kl15" class="" type="text"></td>
					<td><input style="width:100px;" name="sfal_vs_sf_bbls" class="" type="text"></td>
					<td><input style="width:100px;" name="sfal_vs_sf_longton" class="" type="text"></td>
					<td><input style="width:100px;" name="sfal_vs_sf_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:135px;">Ship''s Fig. Before Discharge vs Shore Received (R3)</td>
					<td><input style="width:100px;" name="sfbd_vs_sr_klobs" class="" type="text"></td>
					<td><input style="width:100px;" name="sfbd_vs_sr_kl15" class="" type="text"></td>
					<td><input style="width:100px;" name="sfbd_vs_sr_bbls" class="" type="text"></td>
					<td><input style="width:100px;" name="sfbd_vs_sr_longton" class="" type="text"></td>
					<td><input style="width:100px;" name="sfbd_vs_sr_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>d)</td>
					<td style="width:135px;">Shore Received vs Bill of Lading (R4)</td>
					<td><input style="width:100px;" name="sr_vs_bol_klobs" class="" type="text"></td>
					<td><input style="width:100px;" name="sr_vs_bol_kl15" class="" type="text"></td>
					<td><input style="width:100px;" name="sr_vs_bol_bbls" class="" type="text"></td>
					<td><input style="width:100px;" name="sr_vs_bol_longton" class="" type="text"></td>
					<td><input style="width:100px;" name="sr_vs_bol_metricton" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Quality</td>
<td>
<!-- DIV -->
			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td style="width:135px;">Sample Source</td>
					<td>
						<input style="width:100%" type="text" class="" name="sample_source" />
					</td>
				</tr>
				<tr>
					<td style="width:135px;">Date of Analysis</td>
					<td>
						<input style="min-width:100px !important;width:100px;" data-date-format="dd/mm/yyyy" type="text" class="datepicker" name="date_of_analysis" />
					</td>
				</tr>
				<tr>
					<td style="width:135px;">Certificate Of Quality</td>
					<td>
						<a style="margin-bottom:2px;" href="javascript:;" class="btn btn-success btn-xs" onclick="add_tb_certificate()"><i class="fa fa-plus"></i></a>
						<table id="tb_certificate" style="width:100%;margin-left:-20px;"></table>
					</td>
				</tr>
			</table>
			<script type="text/javascript">
				function add_tb_certificate() {
					$("#tb_certificate").append("<tr><td><table style=\"width:100%;margin-bottom:2px;\"><tr><td style=\"width:100px;\"><input type=\"file\" name=\"fsoq[]\" /></td><td><a href=\"javascript:;\" onclick=\"delete_tb_certificate(this)\" class=\"btn btn-danger btn-xs\"><i class=\"fa fa-minus\"></i> </a></td></tr></table></td></tr>");
				}

				function delete_tb_certificate(e) {
					$(e).parent().parent().parent().parent().remove();
				}
			</script>
</td>
</tr>
</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (26, 'quantity_crude_bunker_vessel', '<table>
<tr>
<td>Delivery Order (DO)</td>
<td>
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">	
	<thead>
		<tr>
			<th style="width:5px;">&nbsp;</th>
			<th style="width:135px;">&nbsp;</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;KL @obsv</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;KL @15° C</th>
			<th style="text-align: left;">&nbsp;&nbsp;&nbsp;Metric Ton</th>
		</tr>
	</thead>

				<tbody>
				<tr>
					<td>a)</td>
					<td style="width:135px;">Initial Readout</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="initial_readout_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="initial_readout_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="initial_readout_metric_tons" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Final Readout</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="final_readout_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="final_readout_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="final_readout_metric_tons" class="" type="text"></td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:135px;">Difference</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="difference_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="difference_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="difference_metric_tons" class="" type="text"></td>
				</tr>
				<tr>
					<td>d)</td>
					<td style="width:135px;">Meter Factor</td>
					<td colspan="3"><input onkeyup="hitung(this)" style="width:100px;" name="meter_factor_klobs" class="" type="text"></td>
				</tr>
				<tr>
					<td>e)</td>
					<td style="width:135px;">Cord. Vol.Delivered</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="cord_vol_delivered_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="cord_vol_delivered_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="cord_vol_delivered_metric_tons" class="" type="text"></td>
				</tr>
				<tr>
					<td>f)</td>
					<td style="width:135px;">Density @15deg C</td>
					<td colspan="3"><input onkeyup="hitung(this)" style="width:100px;" name="density15deg_klobs" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>

<tr><td style="height:10px;"></td></tr>
<tr>
<td>Transporter (Barge Quantity)</td>
<td>
	<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
		<tbody>
			<tr>
				<td style="width:5px;">a)</td>
				<td style="width:135px;">@loading - Barge Before Loading</td>
				<td style="width:160px;"><input style="width:100px;" name="barge_before_loading_klobs" class="" type="text"></td>
				<td style="width:160px;"><input style="width:100px;" name="barge_before_loading_kl15" class="" type="text"></td>
				<td><input style="width:100px;" name="barge_before_loading_metric_tons" class="" type="text"></td>
			</tr>
			<tr>
				<td>b)</td>
				<td style="width:135px;">@loading - Barge After Loading</td>
				<td><input style="width:100px;" name="barge_after_loading_klobs" class="" type="text"></td>
				<td><input style="width:100px;" name="barge_after_loading_kl15" class="" type="text"></td>
				<td><input style="width:100px;" name="barge_after_loading_metric_tons" class="" type="text"></td>
			</tr>
			<tr>
				<td>c)</td>
				<td style="width:135px;">@loading - Barge Loaded</td>
				<td><input style="width:100px;" name="barge_loaded_klobs" class="" type="text"></td>
				<td><input style="width:100px;" name="barge_loaded_kl15" class="" type="text"></td>
				<td><input style="width:100px;" name="barge_loaded_metric_tons" class="" type="text"></td>
			</tr>

			<tr>
				<td>a)</td>
				<td style="width:135px;">@discharge - Barge Before discharge</td>
				<td><input style="width:100px;" name="barge_before_discharge_klobs" class="" type="text"></td>
				<td><input style="width:100px;" name="barge_before_discharge_kl15" class="" type="text"></td>
				<td><input style="width:100px;" name="barge_before_discharge_metric_tons" class="" type="text"></td>
			</tr>
			<tr>
				<td>b)</td>
				<td style="width:135px;">@discharge - Barge After discharge</td>
				<td><input style="width:100px;" name="barge_after_discharge_klobs" class="" type="text"></td>
				<td><input style="width:100px;" name="barge_after_discharge_kl15" class="" type="text"></td>
				<td><input style="width:100px;" name="barge_after_discharge_metric_tons" class="" type="text"></td>
			</tr>
			<tr>
				<td>c)</td>
				<td style="width:135px;">@discharge - Barge Discharged</td>
				<td><input style="width:100px;" name="barge_discharge_klobs" class="" type="text"></td>
				<td><input style="width:100px;" name="barge_discharge_kl15" class="" type="text"></td>
				<td><input style="width:100px;" name="barge_discharge_metric_tons" class="" type="text"></td>
			</tr>
		</tbody>
	</table>
</td>
</tr>

<tr><td style="height:10px;"></td></tr>
<tr>
<td>Outturn (Ship''s Quantity)</td>
<td>
	<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
		<tbody>
			<tr>
				<td style="width:5px;">a)</td>
				<td style="width:135px;">Ship Before Receive</td>
				<td style="width:160px;"><input style="width:100px;" name="barge_before_receive_klobs" class="" type="text"></td>
				<td style="width:160px;"><input style="width:100px;" name="barge_before_receive_kl15" class="" type="text"></td>
				<td><input style="width:100px;" name="barge_before_receive_metric_tons" class="" type="text"></td>
			</tr>
			<tr>
				<td>b)</td>
				<td style="width:135px;">Ship After Receive</td>
				<td><input style="width:100px;" name="barge_after_receive_klobs" class="" type="text"></td>
				<td><input style="width:100px;" name="barge_after_receive_kl15" class="" type="text"></td>
				<td><input style="width:100px;" name="barge_after_receive_metric_tons" class="" type="text"></td>
			</tr>
			<tr>
				<td>c)</td>
				<td style="width:135px;">Ship Received</td>
				<td><input style="width:100px;" name="barge_receive_klobs" class="" type="text"></td>
				<td><input style="width:100px;" name="barge_receive_kl15" class="" type="text"></td>
				<td><input style="width:100px;" name="barge_receive_metric_tons" class="" type="text"></td>
			</tr>
		</tbody>
	</table>
</td>
</tr>

<tr><td style="height:10px;"></td></tr>
<tr>
<td>Discrepancy</td>
<td>
	<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
		<tbody>
			<tr>
				<td style="width:5px;">a)</td>
				<td style="width:135px;">Loading Loss (R1)</td>
				<td style="width:160px;"><input style="width:100px;" name="loading_loss_r1_klobs" class="" type="text"></td>
				<td style="width:160px;"><input style="width:100px;" name="loading_loss_r1_kl15" class="" type="text"></td>
				<td><input style="width:100px;" name="loading_loss_r1_metric_tons" class="" type="text"></td>
			</tr>
			<tr>
				<td>b)</td>
				<td style="width:135px;">Transportation Loss (R2)</td>
				<td><input style="width:100px;" name="transportation_loss_r2_klobs" class="" type="text"></td>
				<td><input style="width:100px;" name="transportation_loss_r2_kl15" class="" type="text"></td>
				<td><input style="width:100px;" name="transportation_loss_r2_metric_tons" class="" type="text"></td>
			</tr>
			<tr>
				<td>c)</td>
				<td style="width:135px;">Discharge Loss (R3)</td>
				<td><input style="width:100px;" name="discharge_loss_r3_klobs" class="" type="text"></td>
				<td><input style="width:100px;" name="discharge_loss_r3_kl15" class="" type="text"></td>
				<td><input style="width:100px;" name="discharge_loss_r3_metric_tons" class="" type="text"></td>
			</tr>
			<tr>
				<td>c)</td>
				<td style="width:135px;">Supply Loss (R4)</td>
				<td><input style="width:100px;" name="supply_loss_r4_klobs" class="" type="text"></td>
				<td><input style="width:100px;" name="supply_loss_r4_kl15" class="" type="text"></td>
				<td><input style="width:100px;" name="supply_loss_r4_metric_tons" class="" type="text"></td>
			</tr>
		</tbody>
	</table>
</td>
</tr>

<tr><td style="height:10px;"></td></tr>
<tr>
<td>Quality</td>
<td>
In Any
</td>
</tr>
</table>', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (22, 'quantity_gas_loading', '<table>
<tr>
<td>BL Figure</td>
<td>
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
	<thead>
		<tr>
			<th style="width:5px;">&nbsp;</th>
			<th style="width:420px;">&nbsp;</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;Gross Vol.</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;Nett. Vol</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;Metric Ton</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;Calorie/MMBTU</th>
			<th style="text-align: left;">&nbsp;&nbsp;&nbsp;GHV (Btu/kg)</th>
		</tr> 
	</thead>
				<tbody>
				<tr>
					<td>a)</td>
					<td>BL Quantity, Gross Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="gsv_gross_vol" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="gsv_nett_vol" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="gsv_metric_ton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="gsv_calorie_mmbtu" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="gsv_ghv" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td>BL Figure based on</td>
					<td colspan="5">
						<input name="bl_flow_meter" value="Y" type="checkbox">
						Flow Meter
						<input name="bl_shore_tank" value="Y" type="checkbox">
						Shore Tank
						<input name="bl_ship_tank" value="Y" type="checkbox">
						Ship Tank
					</td>
				</tr>
				<tr>
					<td>c)</td>
					<td>Density</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="density" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Ship Figure</td>
<td>
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody>
				<tr>
					<td style="width:5px;">a)</td>
					<td style="width:160px;">Ship''s Figure Before Loading, Tank Volume Corrected (m3)</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="sfbl_tank_volume_corrected" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td>Ship''s Figure After Loading, Tank Volume Corrected (m3)</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="sfal_tank_volume_corrected" class="" type="text"></td>
				</tr>
				<tr>
					<td>c)</td>
					<td>Gauging Type </td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100%;" name="density" class="" type="text">
						<input name="gauging_type_capacitance" value="capacitance" type="checkbox">
						Capacitance
						<input name="gauging_type_float_gauge" value="float_gauge" type="checkbox">
						Float Gauge
						<input name="gauging_type_radar" value="radar" type="checkbox">
						Radar
						<input name="gauging_type_laser" value="laser" type="checkbox">
						Laser
					</td>
				</tr>
				<tr>
					<td>d)</td>
					<td>Transferred Volume)</td>
					<td colspan="5">&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>Gross Standard Volume Loaded</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="gros_standard_volume_loaded" class="" type="text"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>Net Standard Volume Loaded</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="net_standard_volume_loaded" class="" type="text"></td>
				</tr>
				<tr>
					<td>e)</td>
					<td>Thermal Expansion Factor - Loading</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="thermal_expansion_volume_loading" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>

<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Volume Of Gas Consumed During Loading</td>
<td>
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
		<tbody>
			<tr>
				<td style="width:5px;">a)</td>
				<td style="width:160px;">Volume Gas During Loading (m3)</td>
				<td><input style="width:100px;" name="volume_gas_during_loading" class="" type="text"></td>
			</tr>
			<tr>
				<td>b)</td>
				<td style="width:135px;">Energy of Gas Consummed (MMBTU)</td>
				<td><input style="width:100px;" name="energy_gas_consumed_during_loading" class="" type="text"></td>
			</tr>
		</tbody>
	</table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Quality</td>
<td>
In Any
</td>
</tr>
</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (18, 'quantity_crude_discharge', '<table>
<tr>
<td>BL Figure</td>
<td>
<!-- DIV -->
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
	<thead>
		<tr>
			<th style="width:5px;">&nbsp;</th>
			<th style="width:250px;">&nbsp;</th>
			<th style="width:150px;text-align: left;">&nbsp;&nbsp;&nbsp;KL @obs</th>
			<th style="width:150px;text-align: left;">&nbsp;&nbsp;&nbsp;KL @15° C</th>
			<th style="width:150px;text-align: left;">&nbsp;&nbsp;&nbsp;BBLS @60°F</th>
			<th style="width:150px;text-align: left;">&nbsp;&nbsp;&nbsp;Long Ton</th>
			<th style="text-align: left;">&nbsp;&nbsp;&nbsp;Metric Ton</th>
		</tr>
	</thead>
				<tbody><tr>
					<td>a)</td>
					<td colspan="6">BL Quantity</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td style="width:150px;">Gross Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_gsv_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_gsv_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_gsv_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_gsv_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_gsv_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td style="width:150px;">Net Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_nsv_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_nsv_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_nsv_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_nsv_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_nsv_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:150px;">BL Figure based on</td>
					<td colspan="10">
						<input name="bl_flow_meter" value="Y" type="checkbox">
						Flow Meter
						<input name="bl_shore_tank" value="Y" type="checkbox">
						Shore Tank
						<input name="bl_ship_tank" value="Y" type="checkbox">
						Ship Tank
					</td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:150px;">Ship''s Figure After Loading (SFAL)</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_metricton" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Shore Figure</td>
<td>
<!-- DIV -->
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td>a)</td>
					<td style="width:150px;">Shore Quantity</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_sq_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_sq_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_sq_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_sq_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_sq_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td style="width:150px;">Gross Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_gsv_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_gsv_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_gsv_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_gsv_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_gsv_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td style="width:150px;">Net Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_nsv_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_nsv_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_nsv_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_nsv_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_nsv_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:150px;">Ship''s Figure After Loading (SFAL)</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_metricton" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Ship Figure</td>
<td>
<!-- DIV -->
<table style="width:900px !important;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td>a)</td>
					<td style="width:150px;">Ship Figure Before Discharge - TOV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_tov_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_tov_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_tov_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_tov_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_tov_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:150px;">Free Water</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="free_water_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="free_water_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="free_water_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="free_water_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="free_water_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:150px;">Remaining On Board Quantity</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="robq_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="robq_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="robq_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="robq_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="robq_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>d)</td>
					<td style="width:150px;">Ship Figure Before Discharge -  GSV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_gsv_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_gsv_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_gsv_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_gsv_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_gsv_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>f)</td>
					<td style="width:150px;">Ship Figure Before Discharge -  NSV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_nsv_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_nsv_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_nsv_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_nsv_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_nsv_metricton" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Discrepancy</td>
<td>
<!-- DIV -->
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td>a)</td>
					<td style="width:150px;">Ship''s Loaded vs Bill of Lading (R1)</td>
					<td><input style="width:100px;" name="slvs_bol_r1_klobs" class="" type="text"></td>
					<td><input style="width:100px;" name="slvs_bol_r1_kl15" class="" type="text"></td>
					<td><input style="width:100px;" name="slvs_bol_r1_bbls" class="" type="text"></td>
					<td><input style="width:100px;" name="slvs_bol_r1_longton" class="" type="text"></td>
					<td><input style="width:100px;" name="slvs_bol_r1_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:150px;">Ship''s Fig. After Loading vs Ship''s Fig. Before Discharge (R2)</td>
					<td><input style="width:100px;" name="sfal_vs_sfbd_r2_klobs" class="" type="text"></td>
					<td><input style="width:100px;" name="sfal_vs_sfbd_r2_kl15" class="" type="text"></td>
					<td><input style="width:100px;" name="sfal_vs_sfbd_r2_bbls" class="" type="text"></td>
					<td><input style="width:100px;" name="sfal_vs_sfbd_r2_longton" class="" type="text"></td>
					<td><input style="width:100px;" name="sfal_vs_sfbd_r2_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:150px;">Ship''s Fig. Before Discharge vs Shore Received (R3)</td>
					<td><input style="width:100px;" class="" name="sfbd_vs_sr_r3_klobs" type="text"></td>
					<td><input style="width:100px;" class="" name="sfbd_vs_sr_r3_kl15" type="text"></td>
					<td><input style="width:100px;" class="" name="sfbd_vs_sr_r3_bbls" type="text"></td>
					<td><input style="width:100px;" class="" name="sfbd_vs_sr_r3_longton" type="text"></td>
					<td><input style="width:100px;" class="" name="sfbd_vs_sr_r3_metricton" type="text"></td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:150px;">Shore Received vs Bill of Lading (R4)</td>
					<td><input style="width:100px;" class="" name="sr_vs_bol_r4_klobs" type="text"></td>
					<td><input style="width:100px;" class="" name="sr_vs_bol_r4_kl15" type="text"></td>
					<td><input style="width:100px;" class="" name="sr_vs_bol_r4_bbls" type="text"></td>
					<td><input style="width:100px;" class="" name="sr_vs_bol_r4_longton" type="text"></td>
					<td><input style="width:100px;" class="" name="sr_vs_bol_r4_metricton" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Quality</td>
<td>
<!-- DIV -->
			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td style="width:135px;">Sample Source</td>
					<td>
						<input style="width:100%" type="text" class="" name="sample_source" />
					</td>
				</tr>
				<tr>
					<td style="width:135px;">Date of Analysis</td>
					<td>
						<input style="min-width:100px !important;width:100px;" data-date-format="dd/mm/yyyy" type="text" class="datepicker" name="date_of_analysis" />
					</td>
				</tr>
				<tr>
					<td style="width:135px;">Certificate Of Quality</td>
					<td>
						<a style="margin-bottom:2px;" href="javascript:;" class="btn btn-success btn-xs" onclick="add_tb_certificate()"><i class="fa fa-plus"></i></a>
						<table id="tb_certificate" style="width:100%;margin-left:-20px;"></table>
					</td>
				</tr>
			</table>
			<script type="text/javascript">
				function add_tb_certificate() {
					$("#tb_certificate").append("<tr><td><table style=\"width:100%;margin-bottom:2px;\"><tr><td style=\"width:100px;\"><input type=\"file\" name=\"fsoq[]\" /></td><td><a href=\"javascript:;\" onclick=\"delete_tb_certificate(this)\" class=\"btn btn-danger btn-xs\"><i class=\"fa fa-minus\"></i> </a></td></tr></table></td></tr>");
				}

				function delete_tb_certificate(e) {
					$(e).parent().parent().parent().parent().remove();
				}
			</script>
</td>
</tr>
</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (23, 'quantity_gas_discharge', '<table>
<tr>
<td>BL Figure</td>
<td>
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
	<thead>
		<tr>
			<th style="width:5px;">&nbsp;</th>
			<th style="width:420px;">&nbsp;</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;Gross Vol.</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;Nett. Vol</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;Metric Ton</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;Calorie/MMBTU</th>
			<th style="text-align: left;">&nbsp;&nbsp;&nbsp;GHV (Btu/kg)</th>
		</tr>
	</thead>
				<tbody>
				<tr>
					<td>a)</td>
					<td>BL Quantity, Gross Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="gsv_gross_vol" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="gsv_nett_vol" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="gsv_metric_ton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="gsv_calorie_mmbtu" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="gsv_ghv" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td>BL Figure based on</td>
					<td colspan="5">
						<input name="bl_flow_meter" value="Y" type="checkbox">
						Flow Meter
						<input name="bl_shore_tank" value="Y" type="checkbox">
						Shore Tank
						<input name="bl_ship_tank" value="Y" type="checkbox">
						Ship Tank
					</td>
				</tr>
				<tr>
					<td>c)</td>
					<td>Density</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="density" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>

<tr>
<td>Ship Figure</td>
<td>
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody>
				<tr>
					<td style="width:5px;">a)</td>
					<td style="width:160px;">Ship''s Figure Before UnLoading, Tank Volume Corrected (m3)</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="sfbul_tank_volume_corrected" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td>Ship''s Figure After UnLoading, Tank Volume Corrected (m3)</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="sfaul_tank_volume_corrected" class="" type="text"></td>
				</tr>
				<tr>
					<td>c)</td>
					<td>Gauging Type </td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100%;" name="density" class="" type="text">
						<input name="gauging_type_capacitance" value="capacitance" type="checkbox">
						Capacitance
						<input name="gauging_type_float_gauge" value="float_gauge" type="checkbox">
						Float Gauge
						<input name="gauging_type_radar" value="radar" type="checkbox">
						Radar
						<input name="gauging_type_laser" value="laser" type="checkbox">
						Laser
					</td>
				</tr>
				<tr>
					<td>d)</td>
					<td>Transferred Volume)</td>
					<td colspan="5">&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>Gross Standard Volume UnLoaded</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="gros_standard_volume_unloaded" class="" type="text"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>Net Standard Volume UnLoaded</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="net_standard_volume_unloaded" class="" type="text"></td>
				</tr>
				<tr>
					<td>e)</td>
					<td>Thermal Expansion Factor - UnLoading</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="thermal_expansion_factor_unloading" class="" type="text"></td>
				</tr>
				<tr>
					<td>f)</td>
					<td>Nominated Ship''s Tanks used</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="nominated_ship_tank_used" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>

<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Volume Of Gas Consumed During UnLoading</td>
<td>
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
		<tbody>
			<tr>
				<td style="width:5px;">a)</td>
				<td style="width:160px;">Volume Gas During UnLoading (m3)</td>
				<td><input style="width:100px;" name="volume_gas_during_unloading" class="" type="text"></td>
			</tr>
			<tr>
				<td>b)</td>
				<td>Energy of Gas Consummed (MMBTU)</td>
				<td><input style="width:100px;" name="energy_gas_consumed_during_unloading" class="" type="text"></td>
			</tr>
		</tbody>
	</table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Volume Gas Consummed Voyage</td>
<td>
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
		<tbody>
			<tr>
				<td style="width:5px;">a)</td>
				<td style="width:160px;">Volume After Loaded (m3)</td>
				<td><input style="width:100px;" name="volume_after_loaded" class="" type="text"></td>
			</tr>
			<tr>
				<td>b)</td>
				<td>Volume before Unloaded (m3)</td>
				<td><input style="width:100px;" name="volume_before_unloaded" class="" type="text"></td>
			</tr>
			<tr>
				<td>c)</td>
				<td>Voyage Consumption (m3)</td>
				<td><input style="width:100px;" name="voyage_consumption" class="" type="text"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><b>Total BOG Consummed Voyage (m3)</b></td>
				<td><input style="width:100px;" name="voyage_consumption" class="" type="text"></td>
			</tr>
		</tbody>
	</table>
</td>
</tr>
</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (25, 'quantity_petrokimia_discharge', '<table>
<tr>
<td>BL Figure</td>
<td>
<!-- DIV -->
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
	<thead>
		<tr>
			<th style="width:5px;">&nbsp;</th>
			<th style="width:160px;text-align: left;"></th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;KL @obs</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;KL @15° C</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;BBLS @60°F</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;Long Ton</th>
			<th style="text-align: left;">&nbsp;&nbsp;&nbsp;Metric Ton</th>
		</tr>
	</thead>
				<tbody><tr>
					<td>a)</td>
					<td style="width:135px;">BL Quantity</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_klobs" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_kl15" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_bbls" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_longton" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_metricton" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">BL Figure based on</td>
					<td colspan="5">
						<input name="bl_flow_meter" value="Y" type="checkbox">
						Flow Meter
						<input name="bl_shore_tank" value="Y" type="checkbox">
						Shore Tank
						<input name="bl_ship_tank" value="Y" type="checkbox">
						Ship Tank
					</td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:135px;">Ship''s Figure After Loading (SFAL)</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_sfal_klobs" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_sfal_kl15" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_sfal_bbls" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_sfal_longton" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_sfal_metricton" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Shore Figure</td>
<td>
<!-- DIV -->
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td style="width:5px;">a)</td>
					<td style="width:160px;">Shore Received</td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sf_shore_received_klobs" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sf_shore_received_kl15" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sf_shore_received_bbls" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sf_shore_received_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_shore_received_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Shore Tanks Used</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100%;" name="sf_stu" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">density@15°C</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100%;" name="sf_density_15c" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Ship Figure</td>
<td>
<!-- DIV -->
<table style="width:900px !important;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td style="width:5px;">a)</td>
					<td style="width:160px;">Ship Figure Before Discharge - TOV</td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_tov_klobs" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_tov_kl15" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_tov_bbls" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_tov_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_tov_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td style="width:10px;">b)</td>
					<td style="width:135px;">Free Water</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="free_water_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="free_water_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="free_water_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="free_water_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="free_water_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td style="width:10px;">c)</td>
					<td style="width:135px;">Remaining On Board Quantity (ROB)</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="robq_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="robq_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="robq_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="robq_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="robq_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td style="width:10px;">d)</td>
					<td style="width:135px;">Ship Figure Before Discharge -  GSV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_gsv_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_gsv_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_gsv_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_gsv_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfbd_gsv_metricton" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Discrepancy</td>
<td>
<!-- DIV -->
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td style="width:5px;">a)</td>
					<td style="width:160px;">Ship''s Loaded vs Bill of Lading (R1)</td>
					<td style="width:160px;"><input style="width:100px;" name="sl_vs_bol_r1_klobs" class="" type="text"></td>
					<td style="width:160px;"><input style="width:100px;" name="sl_vs_bol_r1_kl15" class="" type="text"></td>
					<td style="width:160px;"><input style="width:100px;" name="sl_vs_bol_r1_bbls" class="" type="text"></td>
					<td style="width:160px;"><input style="width:100px;" name="sl_vs_bol_r1_longton" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Ship''s Fig. After Loading vs Ship''s Fig. Before Discharge (R2)</td>
					<td><input style="width:100px;" name="sfal_vs_sf_klobs" class="" type="text"></td>
					<td><input style="width:100px;" name="sfal_vs_sf_kl15" class="" type="text"></td>
					<td><input style="width:100px;" name="sfal_vs_sf_bbls" class="" type="text"></td>
					<td><input style="width:100px;" name="sfal_vs_sf_longton" class="" type="text"></td>
					<td><input style="width:100px;" name="sfal_vs_sf_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:135px;">Ship''s Fig. Before Discharge vs Shore Received (R3)</td>
					<td><input style="width:100px;" name="sfbd_vs_sr_klobs" class="" type="text"></td>
					<td><input style="width:100px;" name="sfbd_vs_sr_kl15" class="" type="text"></td>
					<td><input style="width:100px;" name="sfbd_vs_sr_bbls" class="" type="text"></td>
					<td><input style="width:100px;" name="sfbd_vs_sr_longton" class="" type="text"></td>
					<td><input style="width:100px;" name="sfbd_vs_sr_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>d)</td>
					<td style="width:135px;">Shore Received vs Bill of Lading (R4)</td>
					<td><input style="width:100px;" name="sr_vs_bol_klobs" class="" type="text"></td>
					<td><input style="width:100px;" name="sr_vs_bol_kl15" class="" type="text"></td>
					<td><input style="width:100px;" name="sr_vs_bol_bbls" class="" type="text"></td>
					<td><input style="width:100px;" name="sr_vs_bol_longton" class="" type="text"></td>
					<td><input style="width:100px;" name="sr_vs_bol_metricton" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Quality</td>
<td>
<!-- DIV -->
			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td style="width:135px;">Sample Source</td>
					<td>
						<input style="width:100%" type="text" class="" name="sample_source" />
					</td>
				</tr>
				<tr>
					<td style="width:135px;">Date of Analysis</td>
					<td>
						<input style="min-width:100px !important;width:100px;" data-date-format="dd/mm/yyyy" type="text" class="datepicker" name="date_of_analysis" />
					</td>
				</tr>
				<tr>
					<td style="width:135px;">Certificate Of Quality</td>
					<td>
						<a style="margin-bottom:2px;" href="javascript:;" class="btn btn-success btn-xs" onclick="add_tb_certificate()"><i class="fa fa-plus"></i></a>
						<table id="tb_certificate" style="width:100%;margin-left:-20px;"></table>
					</td>
				</tr>
			</table>
			<script type="text/javascript">
				function add_tb_certificate() {
					$("#tb_certificate").append("<tr><td><table style=\"width:100%;margin-bottom:2px;\"><tr><td style=\"width:100px;\"><input type=\"file\" name=\"fsoq[]\" /></td><td><a href=\"javascript:;\" onclick=\"delete_tb_certificate(this)\" class=\"btn btn-danger btn-xs\"><i class=\"fa fa-minus\"></i> </a></td></tr></table></td></tr>");
				}

				function delete_tb_certificate(e) {
					$(e).parent().parent().parent().parent().remove();
				}
			</script>
</td>
</tr>
</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (19, 'quantity_product_loading', '<table>
<tr>
<td>BL Figure</td>
<td>
<!-- DIV -->
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
	<thead>
		<tr>
			<th style="width:5px;">&nbsp;</th>
			<th style="width:160px;text-align: left;"></th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;KL @obs</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;KL @15° C</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;BBLS @60°F</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;Long Ton</th>
			<th style="text-align: left;">&nbsp;&nbsp;&nbsp;Metric Ton</th>
		</tr>
	</thead>
				<tbody><tr>
					<td>a)</td>
					<td>BL Quantity</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_klobs" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_kl15" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_bbls" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_longton" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_metricton" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td>BL Figure based on</td>
					<td colspan="5">
						<input name="bl_flow_meter" value="Y" type="checkbox">
						Flow Meter
						<input name="bl_shore_tank" value="Y" type="checkbox">
						Shore Tank
						<input name="bl_ship_tank" value="Y" type="checkbox">
						Ship Tank
					</td>
				</tr>
				<tr>
					<td>c)</td>
					<td>density@15°C</td>
					<td colspan="5">
						<input onkeyup="hitung(this)" style="width:100%;" name="bl_15_derajat_celcius" type="text">
					</td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Shore Figure</td>
<td>
<!-- DIV -->
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td style="width:5px;">a)</td>
					<td style="width:160px;">Shore Quantity</td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sf_quantity_klobs" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sf_quantity_kl15" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sf_quantity_bbls" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sf_quantity_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_quantity_metricton	" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Shore Tanks Nomination</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100%;" name="st_nomination" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Ship Figure</td>
<td>
<!-- DIV -->
<table style="width:900px !important;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td style="width:5px;">a)</td>
					<td style="width:160px;">Onboard Quantity (OBQ)</td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_klobs" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_kl15" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_bbls" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td style="width:10px;">b)</td>
					<td style="width:135px;">Ship''s Figure After Loading (SFAL) - TOV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_tov_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_tov_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_tov_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_tov_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_tov_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td style="width:10px;">c)</td>
					<td style="width:135px;">Free Water After Loading</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="fwal_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="fwal_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="fwal_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="fwal_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="fwal_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td style="width:10px;">d)</td>
					<td style="width:135px;">Ship''s Loaded - GSV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sl_gsv_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sl_gsv_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sl_gsv_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sl_gsv_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sl_gsv_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td style="width:10px;">e)</td>
					<td style="width:135px;">Vessel Experience Factor - Loading (VEF-L)</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="vef_loading_bbls" class="" type="text"></td>
				</tr>
				<tr>
					<td style="width:10px;">f)</td>
					<td style="width:135px;">Ship''s Loaded (applied VEF-L)</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_bbls" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Discrepancy</td>
<td>
<!-- DIV -->
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td style="width:5px;">a)</td>
					<td style="width:160px;">Ship''s Loaded vs Bill of Lading (R1)</td>
					<td style="width:160px;"><input style="width:100px;" name="sl_vs_bol_r1_klobs" class="" type="text"></td>
					<td style="width:160px;"><input style="width:100px;" name="sl_vs_bol_r1_kl15" class="" type="text"></td>
					<td style="width:160px;"><input style="width:100px;" name="sl_vs_bol_r1_bbls" class="" type="text"></td>
					<td style="width:160px;"><input style="width:100px;" name="sl_vs_bol_r1_longton" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Ship''s Loaded (VEF applied) vs Bill of Lading (R1)</td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_klobs" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_kl15" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_bbls" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_longton" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_metricton" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Quality</td>
<td>
<!-- DIV -->
			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td style="width:135px;">Sample Source</td>
					<td>
						<input style="width:100%" type="text" class="" name="sample_source" />
					</td>
				</tr>
				<tr>
					<td style="width:135px;">Date of Analysis</td>
					<td>
						<input style="min-width:100px !important;width:100px;" data-date-format="dd/mm/yyyy" type="text" class="datepicker" name="date_of_analysis" />
					</td>
				</tr>
				<tr>
					<td style="width:135px;">Certificate Of Quality</td>
					<td>
						<a style="margin-bottom:2px;" href="javascript:;" class="btn btn-success btn-xs" onclick="add_tb_certificate()"><i class="fa fa-plus"></i></a>
						<table id="tb_certificate" style="width:100%;margin-left:-20px;"></table>
					</td>
				</tr>
			</table>
			<script type="text/javascript">
				function add_tb_certificate() {
					$("#tb_certificate").append("<tr><td><table style=\"width:100%;margin-bottom:2px;\"><tr><td style=\"width:100px;\"><input type=\"file\" name=\"fsoq[]\" /></td><td><a href=\"javascript:;\" onclick=\"delete_tb_certificate(this)\" class=\"btn btn-danger btn-xs\"><i class=\"fa fa-minus\"></i> </a></td></tr></table></td></tr>");
				}

				function delete_tb_certificate(e) {
					$(e).parent().parent().parent().parent().remove();
				}
			</script>
</td>
</tr>
</table>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_HTML" VALUES (24, 'quantity_petrokimia_loading', '<table>
<tr>
<td>BL Figure</td>
<td>
<!-- DIV -->
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
	<thead>
		<tr>
			<th style="width:5px;">&nbsp;</th>
			<th style="width:160px;text-align: left;"></th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;KL @obs</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;KL @15° C</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;BBLS @60°F</th>
			<th style="width:160px;text-align: left;">&nbsp;&nbsp;&nbsp;Long Ton</th>
			<th style="text-align: left;">&nbsp;&nbsp;&nbsp;Metric Ton</th>
		</tr>
	</thead>
				<tbody><tr>
					<td>a)</td>
					<td>BL Quantity</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_klobs" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_kl15" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_bbls" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_longton" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="bl_quantity_metricton" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td>BL Figure based on</td>
					<td colspan="5">
						<input name="bl_flow_meter" value="Y" type="checkbox">
						Flow Meter
						<input name="bl_shore_tank" value="Y" type="checkbox">
						Shore Tank
						<input name="bl_ship_tank" value="Y" type="checkbox">
						Ship Tank
					</td>
				</tr>
				<tr>
					<td>c)</td>
					<td>density@15°C</td>
					<td colspan="5">
						<input onkeyup="hitung(this)" style="width:100%;" name="bl_15_derajat_celcius" type="text">
					</td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Shore Figure</td>
<td>
<!-- DIV -->
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td style="width:5px;">a)</td>
					<td style="width:160px;">Shore Quantity</td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sf_quantity_klobs" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sf_quantity_kl15" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sf_quantity_bbls" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="sf_quantity_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sf_quantity_metricton	" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Shore Tanks Nomination</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100%;" name="st_nomination" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Ship Figure</td>
<td>
<!-- DIV -->
<table style="width:900px !important;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td style="width:5px;">a)</td>
					<td style="width:160px;">Onboard Quantity (OBQ)</td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_klobs" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_kl15" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_bbls" class="" type="text"></td>
					<td style="width:160px;"><input onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td style="width:10px;">b)</td>
					<td style="width:135px;">Ship''s Figure After Loading (SFAL) - TOV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_tov_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_tov_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_tov_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_tov_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sfal_tov_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td style="width:10px;">c)</td>
					<td style="width:135px;">Free Water After Loading</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="fwal_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="fwal_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="fwal_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="fwal_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="fwal_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td style="width:10px;">d)</td>
					<td style="width:135px;">Ship''s Loaded - GSV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sl_gsv_klobs" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sl_gsv_kl15" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sl_gsv_bbls" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sl_gsv_longton" class="" type="text"></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" name="sl_gsv_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td style="width:10px;">e)</td>
					<td style="width:135px;">Vessel Experience Factor - Loading (VEF-L)</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="vef_loading_bbls" class="" type="text"></td>
				</tr>
				<tr>
					<td style="width:10px;">f)</td>
					<td style="width:135px;">Ship''s Loaded (applied VEF-L)</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_bbls" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Discrepancy</td>
<td>
<!-- DIV -->
<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tbody><tr>
					<td style="width:5px;">a)</td>
					<td style="width:160px;">Ship''s Loaded vs Bill of Lading (R1)</td>
					<td style="width:160px;"><input style="width:100px;" name="sl_vs_bol_r1_klobs" class="" type="text"></td>
					<td style="width:160px;"><input style="width:100px;" name="sl_vs_bol_r1_kl15" class="" type="text"></td>
					<td style="width:160px;"><input style="width:100px;" name="sl_vs_bol_r1_bbls" class="" type="text"></td>
					<td style="width:160px;"><input style="width:100px;" name="sl_vs_bol_r1_longton" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_metricton" class="" type="text"></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Ship''s Loaded (VEF applied) vs Bill of Lading (R1)</td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_klobs" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_kl15" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_bbls" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_longton" class="" type="text"></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_metricton" class="" type="text"></td>
				</tr>
			</tbody></table>
</td>
</tr>
<tr><td colspan="2" style="height:10px;"></td></tr>
<tr>
<td>Quality</td>
<td>
<!-- DIV -->
			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td style="width:135px;">Sample Source</td>
					<td>
						<input style="width:100%" type="text" class="" name="sample_source" />
					</td>
				</tr>
				<tr>
					<td style="width:135px;">Date of Analysis</td>
					<td>
						<input style="min-width:100px !important;width:100px;" data-date-format="dd/mm/yyyy" type="text" class="datepicker" name="date_of_analysis" />
					</td>
				</tr>
				<tr>
					<td style="width:135px;">Certificate Of Quality</td>
					<td>
						<a style="margin-bottom:2px;" href="javascript:;" class="btn btn-success btn-xs" onclick="add_tb_certificate()"><i class="fa fa-plus"></i></a>
						<table id="tb_certificate" style="width:100%;margin-left:-20px;"></table>
					</td>
				</tr>
			</table>
			<script type="text/javascript">
				function add_tb_certificate() {
					$("#tb_certificate").append("<tr><td><table style=\"width:100%;margin-bottom:2px;\"><tr><td style=\"width:100px;\"><input type=\"file\" name=\"fsoq[]\" /></td><td><a href=\"javascript:;\" onclick=\"delete_tb_certificate(this)\" class=\"btn btn-danger btn-xs\"><i class=\"fa fa-minus\"></i> </a></td></tr></table></td></tr>");
				}

				function delete_tb_certificate(e) {
					$(e).parent().parent().parent().parent().remove();
				}
			</script>
</td>
</tr>
</table>', 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for KOMPONEN_JSON
-- ----------------------------
DROP TABLE IF EXISTS "public"."KOMPONEN_JSON";
CREATE TABLE "public"."KOMPONEN_JSON" (
  "ID" int4 NOT NULL DEFAULT nextval('"KOMPONEN_JSON_ID_seq"'::regclass),
  "NAME" text COLLATE "pg_catalog"."default",
  "DATA" jsonb,
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6)
)
;

-- ----------------------------
-- Records of KOMPONEN_JSON
-- ----------------------------
INSERT INTO "public"."KOMPONEN_JSON" VALUES (1, 'timelog_product_loading', '[{"date": "date_vessel_arrived", "time": "time_vessel_arrived", "tr_css": "", "remarks": "remarks_vessel_arrived", "activities": "Vessel Arrived"}, {"date": "date_anchoraged", "time": "time_anchoraged", "tr_css": "", "remarks": "remarks_anchoraged", "activities": "Vessel Anchoraged"}, {"date": "date_nor", "time": "time_nor", "tr_css": "", "remarks": "remarks_nor", "activities": "NOR Tendered"}, {"date": "date_accepted", "time": "time_accepted", "tr_css": "", "remarks": "remarks_accepted", "activities": "NOR Accepted"}, {"date": "date_berthed", "time": "time_berthed", "tr_css": "", "remarks": "remarks_berthed", "activities": "Vessel Berthed"}, {"date": "date_surveyor_on_board", "time": "time_surveyor_on_board", "tr_css": "", "remarks": "remarks_surveyor_on_board", "activities": "Surveyor on Board"}, {"date": "date_key_meeting", "time": "time_key_meeting", "tr_css": "", "remarks": "remarks_key_meeting", "activities": "Key Meeting"}, {"date": "date_commenced", "time": "time_commenced", "tr_css": "", "remarks": "remarks_commenced", "activities": "Tanks Inspection commenced "}, {"date": "date_completed", "time": "time_completed", "tr_css": "", "remarks": "remarks_completed", "activities": "Tanks Inspection Completed "}, {"date": "date_connected_commenced", "time": "time_connected_commenced", "tr_css": "", "remarks": "remarks_connected_commenced", "activities": "Hose Connected commenced"}, {"date": "date_connected_completed", "time": "time_connected_completed", "tr_css": "", "remarks": "remarks_connected_completed", "activities": "Hose Connected completed"}, {"date": "date_loading_commenced", "time": "time_loading_commenced", "tr_css": "", "remarks": "remarks_loading_commenced", "activities": "Loading commenced"}, {"date": "date_loading_completed", "time": "time_loading_completed", "tr_css": "", "remarks": "remarks_loading_completed", "activities": "Loading completed"}, {"date": "date_hose_connected", "time": "time_hose_connected", "tr_css": "", "remarks": "remarks_hose_connected", "activities": "Hose Disconnected"}, {"date": "date_sampling_commenced", "time": "time_sampling_commenced", "tr_css": "", "remarks": "remarks_sampling_commenced", "activities": "Sampling Commenced"}, {"date": "date_sampling_completed", "time": "time_sampling_completed", "tr_css": "", "remarks": "remarks_sampling_completed", "activities": "Sampling Completed"}, {"date": "date_measurement_commenced", "time": "time_measurement_commenced", "tr_css": "", "remarks": "remarks_measurement_commenced", "activities": "Cargo measurement Commenced"}, {"date": "date_measurement_completed", "time": "time_measurement_completed", "tr_css": "", "remarks": "remarks_measurement_completed", "activities": "Cargo measurement Completed"}, {"date": "date_documents_onboard", "time": "time_documents_onboard", "tr_css": "", "remarks": "remarks_documents_onboard", "activities": "Documents Onboard"}, {"date": "date_vessel_sailed", "time": "time_vessel_sailed", "tr_css": "", "remarks": "remarks_vessel_sailed", "activities": "Vessel sailed"}]', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_JSON" VALUES (2, 'timelog_product_discharge', '[{"date": "date_vessel_arrived", "time": "time_vessel_arrived", "tr_css": "", "remarks": "remarks_vessel_arrived", "activities": "Vessel Arrived"}, {"date": "date_anchoraged", "time": "time_anchoraged", "tr_css": "", "remarks": "remarks_anchoraged", "activities": "Vessel Anchoraged"}, {"date": "date_nor", "time": "time_nor", "tr_css": "", "remarks": "remarks_nor", "activities": "NOR Tendered"}, {"date": "date_accepted", "time": "time_accepted", "tr_css": "", "remarks": "remarks_accepted", "activities": "NOR Accepted"}, {"date": "date_pob", "time": "time_pob", "tr_css": "", "remarks": "remarks_pob", "activities": "Pilot On Board (for Berthing)"}, {"date": "date_a_aweigh", "time": "time_a_aweigh", "tr_css": "", "remarks": "remarks_a_aweigh", "activities": "Anchors Aweigh"}, {"date": "date_berthing", "time": "time_berthing", "tr_css": "", "remarks": "remarks_berthing", "activities": "Vessel Berthing"}, {"date": "date_surveyor_on_board", "time": "time_surveyor_on_board", "tr_css": "", "remarks": "remarks_surveyor_on_board", "activities": "Surveyor on Board"}, {"date": "date_key_meeting", "time": "time_key_meeting", "tr_css": "", "remarks": "remarks_key_meeting", "activities": "Key Meeting"}, {"date": "date_inpection_commenced", "time": "time_inpection_commenced", "tr_css": "", "remarks": "remarks_inpection_commenced", "activities": "Tanks Inspection and Calc. Commenced "}, {"date": "date_inspection_completed", "time": "time_inspection_completed", "tr_css": "", "remarks": "remarks_inspection_completed", "activities": "Tanks Inspection and Calc. Completed"}, {"date": "date_sbd_commenced", "time": "time_sbd_commenced", "tr_css": "", "remarks": "remarks_sbd_commenced", "activities": "Sampling Before Discharge Commenced"}, {"date": "date_sbd_completed", "time": "time_sbd_completed", "tr_css": "", "remarks": "remarks_sbd_completed", "activities": "Sampling Before Discharge Completed"}, {"date": "date_hose_connected", "time": "time_hose_connected", "tr_css": "", "remarks": "remarks_hose_connected", "activities": "Hose Connected"}, {"date": "date_connected_completed", "time": "time_connected_completed", "tr_css": "", "remarks": "remarks_connected_completed", "activities": "Hose Connected completed"}, {"date": "date_discharge_commenced", "time": "time_discharge_commenced", "tr_css": "", "remarks": "remarks_discharge_commenced", "activities": "Discharge commenced"}, {"date": "date_discharge_completed", "time": "time_discharge_completed", "tr_css": "", "remarks": "remarks_discharge_completed", "activities": "Discharge completed"}, {"date": "date_hose_disconnected", "time": "time_hose_disconnected", "tr_css": "", "remarks": "remarks_hose_disconnected", "activities": "Hose Disconnected"}, {"date": "date_tanks_ins_commenced", "time": "time_tanks_ins_commenced", "tr_css": "", "remarks": "remarks_tanks_ins_commenced", "activities": "Tanks Inspection Commenced"}, {"date": "date_tanks_ins_completed", "time": "time_tanks_ins_completed", "tr_css": "", "remarks": "remarks_tanks_ins_completed", "activities": "Tanks Inspection Completed"}, {"date": "date_documents_onboard", "time": "time_documents_onboard", "tr_css": "", "remarks": "remarks_documents_onboard", "activities": "Documents Onboard"}, {"date": "date_svy_left_vessel", "time": "time_svy_left_vessel", "tr_css": "", "remarks": "remarks_svy_left_vessel", "activities": "Surveyour Left Vessel"}, {"date": "date_vessel_sail", "time": "time_vessel_sail", "tr_css": "", "remarks": "remarks_vessel_sail", "activities": "Vessel sail"}]', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_JSON" VALUES (4, 'timelog_crude_discharge', '[{"date": "date_vessel_arrived", "time": "time_vessel_arrived", "tr_css": "", "remarks": "remarks_vessel_arrived", "activities": "Vessel Arrived"}, {"date": "date_anchoraged", "time": "time_anchoraged", "tr_css": "", "remarks": "remarks_anchoraged", "activities": "Vessel Anchoraged"}, {"date": "date_nor", "time": "time_nor", "tr_css": "", "remarks": "remarks_nor", "activities": "NOR Tendered"}, {"date": "date_accepted", "time": "time_accepted", "tr_css": "", "remarks": "remarks_accepted", "activities": "NOR Accepted"}, {"date": "date_pob", "time": "time_pob", "tr_css": "", "remarks": "remarks_pob", "activities": "Pilot On Board (for Berthing)"}, {"date": "date_a_aweigh", "time": "time_a_aweigh", "tr_css": "", "remarks": "remarks_a_aweigh", "activities": "Anchors Aweigh"}, {"date": "date_berthing", "time": "time_berthing", "tr_css": "", "remarks": "remarks_berthing", "activities": "Vessel Berthing"}, {"date": "date_surveyor_on_board", "time": "time_surveyor_on_board", "tr_css": "", "remarks": "remarks_surveyor_on_board", "activities": "Surveyor on Board"}, {"date": "date_key_meeting", "time": "time_key_meeting", "tr_css": "", "remarks": "remarks_key_meeting", "activities": "Key Meeting"}, {"date": "date_inpection_commenced", "time": "time_inpection_commenced", "tr_css": "", "remarks": "remarks_inpection_commenced", "activities": "Tanks Inspection and Calc. Commenced "}, {"date": "date_inspection_completed", "time": "time_inspection_completed", "tr_css": "", "remarks": "remarks_inspection_completed", "activities": "Tanks Inspection and Calc. Completed"}, {"date": "date_sbd_commenced", "time": "time_sbd_commenced", "tr_css": "", "remarks": "remarks_sbd_commenced", "activities": "Sampling Before Discharge Commenced"}, {"date": "date_sbd_completed", "time": "time_sbd_completed", "tr_css": "", "remarks": "remarks_sbd_completed", "activities": "Sampling Before Discharge Completed"}, {"date": "date_hose_connected", "time": "time_hose_connected", "tr_css": "", "remarks": "remarks_hose_connected", "activities": "Hose Connected"}, {"date": "date_connected_completed", "time": "time_connected_completed", "tr_css": "", "remarks": "remarks_connected_completed", "activities": "Hose Connected completed"}, {"date": "date_discharge_commenced", "time": "time_discharge_commenced", "tr_css": "", "remarks": "remarks_discharge_commenced", "activities": "Discharge commenced"}, {"date": "date_discharge_completed", "time": "time_discharge_completed", "tr_css": "", "remarks": "remarks_discharge_completed", "activities": "Discharge completed"}, {"date": "date_hose_disconnected", "time": "time_hose_disconnected", "tr_css": "", "remarks": "remarks_hose_disconnected", "activities": "Hose Disconnected"}, {"date": "date_tanks_ins_commenced", "time": "time_tanks_ins_commenced", "tr_css": "", "remarks": "remarks_tanks_ins_commenced", "activities": "Tanks Inspection Commenced"}, {"date": "date_tanks_ins_completed", "time": "time_tanks_ins_completed", "tr_css": "", "remarks": "remarks_tanks_ins_completed", "activities": "Tanks Inspection Completed"}, {"date": "date_documents_onboard", "time": "time_documents_onboard", "tr_css": "", "remarks": "remarks_documents_onboard", "activities": "Documents Onboard"}, {"date": "date_svy_left_vessel", "time": "time_svy_left_vessel", "tr_css": "", "remarks": "remarks_svy_left_vessel", "activities": "Surveyour Left Vessel"}, {"date": "date_vessel_sail", "time": "time_vessel_sail", "tr_css": "", "remarks": "remarks_vessel_sail", "activities": "Vessel sail"}]', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_JSON" VALUES (3, 'timelog_crude_loading', '[{"date": "date_vessel_arrived", "time": "time_vessel_arrived", "tr_css": "", "remarks": "remarks_vessel_arrived", "activities": "Vessel Arrived"}, {"date": "date_anchoraged", "time": "time_anchoraged", "tr_css": "", "remarks": "remarks_anchoraged", "activities": "Vessel Anchoraged"}, {"date": "date_nor", "time": "time_nor", "tr_css": "", "remarks": "remarks_nor", "activities": "NOR Tendered"}, {"date": "date_accepted", "time": "time_accepted", "tr_css": "", "remarks": "remarks_accepted", "activities": "NOR Accepted"}, {"date": "date_berthed", "time": "time_berthed", "tr_css": "", "remarks": "remarks_berthed", "activities": "Vessel Berthed"}, {"date": "date_surveyor_on_board", "time": "time_surveyor_on_board", "tr_css": "", "remarks": "remarks_surveyor_on_board", "activities": "Surveyor on Board"}, {"date": "date_key_meeting", "time": "time_key_meeting", "tr_css": "", "remarks": "remarks_key_meeting", "activities": "Key Meeting"}, {"date": "date_inpection_commenced", "time": "time_inpection_commenced", "tr_css": "", "remarks": "remarks_inpection_commenced", "activities": "Tanks Inspection Commenced "}, {"date": "date_inspection_completed", "time": "time_inspection_completed", "tr_css": "", "remarks": "remarks_inspection_completed", "activities": "Tanks Inspection Completed"}, {"date": "date_hose_connected_commenced", "time": "time_hose_connected_commenced", "tr_css": "", "remarks": "remarks_hose_connected_commenced", "activities": "Hose Connected Commenced"}, {"date": "date_hose_connected_completed", "time": "time_hose_connected_completed", "tr_css": "", "remarks": "remarks_hose_connected_completed", "activities": "Hose Connected completed"}, {"date": "date_loading_commenced", "time": "time_loading_commenced", "tr_css": "", "remarks": "remarks_loading_commenced", "activities": "Loading commenced"}, {"date": "date_loading_completed", "time": "time_loading_completed", "tr_css": "", "remarks": "remarks_loading_completed", "activities": "Loading completed"}, {"date": "date_hose_disconnected", "time": "time_hose_disconnected", "tr_css": "", "remarks": "remarks_hose_disconnected", "activities": "Hose Disconnected"}, {"date": "date_sampling_commenced", "time": "time_sampling_commenced", "tr_css": "", "remarks": "remarks_sampling_commenced", "activities": "Sampling Commenced"}, {"date": "date_sampling_completed", "time": "time_sampling_completed", "tr_css": "", "remarks": "remarks_sampling_completed", "activities": "Sampling Completed"}, {"date": "date_cargo_measurement_commenced", "time": "time_cargo_measurement_commenced", "tr_css": "", "remarks": "remarks_cargo_measurement_commenced", "activities": "Cargo measurement Commenced"}, {"date": "date_cargo_measurement_completed", "time": "time_cargo_measurement_completed", "tr_css": "", "remarks": "remarks_cargo_measurement_completed", "activities": "Cargo measurement Completed"}, {"date": "date_documents_onboard", "time": "time_documents_onboard", "tr_css": "", "remarks": "remarks_documents_onboard", "activities": "Documents Onboard"}, {"date": "date_vessel_sailed", "time": "time_vessel_sailed", "tr_css": "", "remarks": "remarks_vessel_sailed", "activities": "Vessel sailed"}]', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_JSON" VALUES (8, 'timelog_petrokimia_loading', '[{"date": "date_vessel_arrived", "time": "time_vessel_arrived", "tr_css": "", "remarks": "remarks_vessel_arrived", "activities": "Vessel Arrived"}, {"date": "date_anchoraged", "time": "time_anchoraged", "tr_css": "", "remarks": "remarks_anchoraged", "activities": "Vessel Anchoraged"}, {"date": "date_nor", "time": "time_nor", "tr_css": "", "remarks": "remarks_nor", "activities": "NOR Tendered"}, {"date": "date_accepted", "time": "time_accepted", "tr_css": "", "remarks": "remarks_accepted", "activities": "NOR Accepted"}, {"date": "date_berthed", "time": "time_berthed", "tr_css": "", "remarks": "remarks_berthed", "activities": "Vessel Berthed"}, {"date": "date_surveyor_on_board", "time": "time_surveyor_on_board", "tr_css": "", "remarks": "remarks_surveyor_on_board", "activities": "Surveyor on Board"}, {"date": "date_key_meeting", "time": "time_key_meeting", "tr_css": "", "remarks": "remarks_key_meeting", "activities": "Key Meeting"}, {"date": "date_commenced", "time": "time_commenced", "tr_css": "", "remarks": "remarks_commenced", "activities": "Tanks Inspection commenced "}, {"date": "date_completed", "time": "time_completed", "tr_css": "", "remarks": "remarks_completed", "activities": "Tanks Inspection Completed "}, {"date": "date_connected_commenced", "time": "time_connected_commenced", "tr_css": "", "remarks": "remarks_connected_commenced", "activities": "Hose Connected commenced"}, {"date": "date_connected_completed", "time": "time_connected_completed", "tr_css": "", "remarks": "remarks_connected_completed", "activities": "Hose Connected completed"}, {"date": "date_loading_commenced", "time": "time_loading_commenced", "tr_css": "", "remarks": "remarks_loading_commenced", "activities": "Loading commenced"}, {"date": "date_loading_completed", "time": "time_loading_completed", "tr_css": "", "remarks": "remarks_loading_completed", "activities": "Loading completed"}, {"date": "date_hose_connected", "time": "time_hose_connected", "tr_css": "", "remarks": "remarks_hose_connected", "activities": "Hose Disconnected"}, {"date": "date_sampling_commenced", "time": "time_sampling_commenced", "tr_css": "", "remarks": "remarks_sampling_commenced", "activities": "Sampling Commenced"}, {"date": "date_sampling_completed", "time": "time_sampling_completed", "tr_css": "", "remarks": "remarks_sampling_completed", "activities": "Sampling Completed"}, {"date": "date_measurement_commenced", "time": "time_measurement_commenced", "tr_css": "", "remarks": "remarks_measurement_commenced", "activities": "Cargo measurement Commenced"}, {"date": "date_measurement_completed", "time": "time_measurement_completed", "tr_css": "", "remarks": "remarks_measurement_completed", "activities": "Cargo measurement Completed"}, {"date": "date_documents_onboard", "time": "time_documents_onboard", "tr_css": "", "remarks": "remarks_documents_onboard", "activities": "Documents Onboard"}, {"date": "date_vessel_sailed", "time": "time_vessel_sailed", "tr_css": "", "remarks": "remarks_vessel_sailed", "activities": "Vessel sailed"}]', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_JSON" VALUES (6, 'timelog_gas_loading', '[{"date": "date_loading_gas_vessel_arrived", "time": "time_loading_gas_vessel_arrived", "tr_css": "", "remarks": "remarks_loading_gas_vessel_arrived", "activities": "@Loading - Vessel Arrived"}, {"date": "date_loading_gas_vessel_anchoraged", "time": "time_loading_gas_vessel_anchoraged", "tr_css": "", "remarks": "remarks_loading_gas_vessel_anchoraged", "activities": "@Loading - Vessel Anchoraged"}, {"date": "date_loading_gas_nor_tendered", "time": "time_loading_gas_nor_tendered", "tr_css": "", "remarks": "remarks_loading_gas_nor_tendered", "activities": "@Loading - NOR Tendered"}, {"date": "date_loading_gas_nor_accepted", "time": "time_loading_gas_nor_accepted", "tr_css": "", "remarks": "remarks_loading_gas_nor_accepted", "activities": "@Loading - NOR Accepted"}, {"date": "date_loading_gas_vessel_berthed", "time": "time_loading_gas_vessel_berthed", "tr_css": "", "remarks": "remarks_loading_gas_vessel_berthed", "activities": "@Loading - Vessel Berthed"}, {"date": "date_loading_gas_surveyor_on_board", "time": "time_loading_gas_surveyor_on_board", "tr_css": "", "remarks": "remarks_loading_gas_surveyor_on_board", "activities": "@Loading - Surveyor on Board"}, {"date": "date_loading_gas_key_meeting", "time": "time_loading_gas_key_meeting", "tr_css": "", "remarks": "remarks_loading_gas_key_meeting", "activities": "@Loading - Key Meeting"}, {"date": "date_loading_gas_connection_of_vapor_arms_commence", "time": "time_loading_gas_connection_of_vapor_arms_commence", "tr_css": "", "remarks": "remarks_loading_gas_connection_of_vapor_arms_commence", "activities": "@Loading - Connection of Vapor Arms Commence"}, {"date": "date_loading_gas_connection_of_vapor_arms_completed", "time": "time_loading_gas_connection_of_vapor_arms_completed", "tr_css": "", "remarks": "remarks_loading_gas_connection_of_vapor_arms_completed", "activities": "@Loading - Connection of Vapor Arms Completed"}, {"date": "date_loading_gas_connection_of_liquid_arms_commence", "time": "time_loading_gas_connection_of_liquid_arms_commence", "tr_css": "", "remarks": "remarks_loading_gas_connection_of_liquid_arms_commence", "activities": "@Loading - Connection of Liquid Arms Commence"}, {"date": "date_loading_gas_connection_of_liquid_arms_completed", "time": "time_loading_gas_connection_of_liquid_arms_completed", "tr_css": "", "remarks": "remarks_loading_gas_connection_of_liquid_arms_completed", "activities": "@Loading - Connection of Liquid Arms Completed"}, {"date": "date_loading_gas_cool_down_of_loading_arms_commence", "time": "time_loading_gas_cool_down_of_loading_arms_commence", "tr_css": "", "remarks": "remarks_loading_gas_cool_down_of_loading_arms_commence", "activities": "@Loading - Cool down of Loading Arms Commence"}, {"date": "date_loading_gas_cool_down_of_loading_arms_completed", "time": "time_loading_gas_cool_down_of_loading_arms_completed", "tr_css": "", "remarks": "remarks_loading_gas_cool_down_of_loading_arms_completed", "activities": "@Loading - Cool down of Loading Arms Completed"}, {"date": "date_loading_gas_opening_custody_transfer_inspection", "time": "time_loading_gas_opening_custody_transfer_inspection", "tr_css": "", "remarks": "remarks_loading_gas_opening_custody_transfer_inspection", "activities": "@Loading - Opening Custody Transfer Inspection"}, {"date": "date_loading_gas_commenced_loading_of_cargo", "time": "time_loading_gas_commenced_loading_of_cargo", "tr_css": "", "remarks": "remarks_loading_gas_commenced_loading_of_cargo", "activities": "@Loading - Commenced Loading of Cargo"}, {"date": "date_loading_gas_completed_loading_of_cargo", "time": "time_loading_gas_completed_loading_of_cargo", "tr_css": "", "remarks": "remarks_loading_gas_completed_loading_of_cargo", "activities": "@Loading - Completed Loading of Cargo"}, {"date": "date_loading_gas_disconnection_of_vapor_arms_commence", "time": "time_loading_gas_disconnection_of_vapor_arms_commence", "tr_css": "", "remarks": "remarks_loading_gas_disconnection_of_vapor_arms_commence", "activities": "@Loading - Disconnection of Vapor Arms Commence"}, {"date": "date_loading_gas_disconnection_of_vapor_arms_completed", "time": "time_loading_gas_disconnection_of_vapor_arms_completed", "tr_css": "", "remarks": "remarks_loading_gas_disconnection_of_vapor_arms_completed", "activities": "@Loading - Disconnection of Vapor Arms Completed"}, {"date": "date_loading_gas_disconnection_of_liquid_arms_commence", "time": "time_loading_gas_disconnection_of_liquid_arms_commence", "tr_css": "", "remarks": "remarks_loading_gas_disconnection_of_liquid_arms_commence", "activities": "@Loading - Disconnection of Liquid Arms Commence"}, {"date": "date_loading_gas_disconnection_of_liquid_arms_completed", "time": "time_loading_gas_disconnection_of_liquid_arms_completed", "tr_css": "", "remarks": "remarks_loading_gas_disconnection_of_liquid_arms_completed", "activities": "@Loading - Disconnection of Liquid Arms Completed"}, {"date": "date_loading_gas_closing_custody_transfer_inspection", "time": "time_loading_gas_closing_custody_transfer_inspection", "tr_css": "", "remarks": "remarks_loading_gas_closing_custody_transfer_inspection", "activities": "@Loading - Closing Custody Transfer Inspection"}, {"date": "date_loading_gas_documents_onboard", "time": "time_loading_gas_documents_onboard", "tr_css": "", "remarks": "remarks_loading_gas_documents_onboard", "activities": "@Loading - Documents Onboard"}, {"date": "date_loading_gas_vessel_sailed", "time": "time_loading_gas_vessel_sailed", "tr_css": "", "remarks": "remarks_loading_gas_vessel_sailed", "activities": "@Loading - Vessel sailed"}]', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_JSON" VALUES (7, 'timelog_gas_discharge', '[{"date": "date_discharge_gas_vessel_arrived", "time": "time_discharge_gas_vessel_arrived", "tr_css": "", "remarks": "remarks_discharge_gas_vessel_arrived", "activities": "@Discharge - Vessel Arrived"}, {"date": "date_discharge_gas_vessel_anchoraged", "time": "time_discharge_gas_vessel_anchoraged", "tr_css": "", "remarks": "remarks_discharge_gas_vessel_anchoraged", "activities": "@Discharge - Vessel Anchoraged"}, {"date": "date_discharge_gas_nor_tendered", "time": "time_discharge_gas_nor_tendered", "tr_css": "", "remarks": "remarks_discharge_gas_nor_tendered", "activities": "@Discharge - NOR Tendered"}, {"date": "date_discharge_gas_nor_accepted", "time": "time_discharge_gas_nor_accepted", "tr_css": "", "remarks": "remarks_discharge_gas_nor_accepted", "activities": "@Discharge - NOR Accepted"}, {"date": "date_discharge_gas_vessel_berthed", "time": "time_discharge_gas_vessel_berthed", "tr_css": "", "remarks": "remarks_discharge_gas_vessel_berthed", "activities": "@Discharge - Vessel Berthed"}, {"date": "date_discharge_gas_surveyor_on_board", "time": "time_discharge_gas_surveyor_on_board", "tr_css": "", "remarks": "remarks_discharge_gas_surveyor_on_board", "activities": "@Discharge - Surveyor on Board"}, {"date": "date_discharge_gas_key_meeting", "time": "time_discharge_gas_key_meeting", "tr_css": "", "remarks": "remarks_discharge_gas_key_meeting", "activities": "@Discharge - Key Meeting"}, {"date": "date_discharge_gas_connection_of_vapor_arms_commence", "time": "time_discharge_gas_connection_of_vapor_arms_commence", "tr_css": "", "remarks": "remarks_discharge_gas_connection_of_vapor_arms_commence", "activities": "@Discharge - Connection of Vapor Arms Commence"}, {"date": "date_discharge_gas_connection_of_vapor_arms_completed", "time": "time_discharge_gas_connection_of_vapor_arms_completed", "tr_css": "", "remarks": "remarks_discharge_gas_connection_of_vapor_arms_completed", "activities": "@Discharge - Connection of Vapor Arms Completed"}, {"date": "date_discharge_gas_connection_of_liquid_arms_commence", "time": "time_discharge_gas_connection_of_liquid_arms_commence", "tr_css": "", "remarks": "remarks_discharge_gas_connection_of_liquid_arms_commence", "activities": "@Discharge - Connection of Liquid Arms Commence"}, {"date": "date_discharge_gas_connection_of_liquid_arms_completed", "time": "time_discharge_gas_connection_of_liquid_arms_completed", "tr_css": "", "remarks": "remarks_discharge_gas_connection_of_liquid_arms_completed", "activities": "@Discharge - Connection of Liquid Arms Completed"}, {"date": "date_discharge_gas_cool_down_of_discharge_arms_commence", "time": "time_discharge_gas_cool_down_of_discharge_arms_commence", "tr_css": "", "remarks": "remarks_discharge_gas_cool_down_of_discharge_arms_commence", "activities": "@Discharge - Cool down of Loading Arms Commence"}, {"date": "date_discharge_gas_cool_down_of_discharge_arms_completed", "time": "time_discharge_gas_cool_down_of_discharge_arms_completed", "tr_css": "", "remarks": "remarks_discharge_gas_cool_down_of_discharge_arms_completed", "activities": "@Discharge - Cool down of Loading Arms Completed"}, {"date": "date_discharge_gas_opening_custody_transfer_inspection", "time": "time_discharge_gas_opening_custody_transfer_inspection", "tr_css": "", "remarks": "remarks_discharge_gas_opening_custody_transfer_inspection", "activities": "@Discharge - Opening Custody Transfer Inspection"}, {"date": "date_discharge_gas_commenced_discharge_of_cargo", "time": "time_discharge_gas_commenced_discharge_of_cargo", "tr_css": "", "remarks": "remarks_discharge_gas_commenced_discharge_of_cargo", "activities": "@Discharge - Commenced Loading of Cargo"}, {"date": "date_discharge_gas_completed_discharge_of_cargo", "time": "time_discharge_gas_completed_discharge_of_cargo", "tr_css": "", "remarks": "remarks_discharge_gas_completed_discharge_of_cargo", "activities": "@Discharge - Completed Loading of Cargo"}, {"date": "date_discharge_gas_disconnection_of_vapor_arms_commence", "time": "time_discharge_gas_disconnection_of_vapor_arms_commence", "tr_css": "", "remarks": "remarks_discharge_gas_disconnection_of_vapor_arms_commence", "activities": "@Discharge - Disconnection of Vapor Arms Commence"}, {"date": "date_discharge_gas_disconnection_of_vapor_arms_completed", "time": "time_discharge_gas_disconnection_of_vapor_arms_completed", "tr_css": "", "remarks": "remarks_discharge_gas_disconnection_of_vapor_arms_completed", "activities": "@Discharge - Disconnection of Vapor Arms Completed"}, {"date": "date_discharge_gas_disconnection_of_liquid_arms_commence", "time": "time_discharge_gas_disconnection_of_liquid_arms_commence", "tr_css": "", "remarks": "remarks_discharge_gas_disconnection_of_liquid_arms_commence", "activities": "@Discharge - Disconnection of Liquid Arms Commence"}, {"date": "date_discharge_gas_disconnection_of_liquid_arms_completed", "time": "time_discharge_gas_disconnection_of_liquid_arms_completed", "tr_css": "", "remarks": "remarks_discharge_gas_disconnection_of_liquid_arms_completed", "activities": "@Discharge - Disconnection of Liquid Arms Completed"}, {"date": "date_discharge_gas_closing_custody_transfer_inspection", "time": "time_discharge_gas_closing_custody_transfer_inspection", "tr_css": "", "remarks": "remarks_discharge_gas_closing_custody_transfer_inspection", "activities": "@Discharge - Closing Custody Transfer Inspection"}, {"date": "date_discharge_gas_documents_onboard", "time": "time_discharge_gas_documents_onboard", "tr_css": "", "remarks": "remarks_discharge_gas_documents_onboard", "activities": "@Discharge - Documents Onboard"}, {"date": "date_discharge_gas_vessel_sailed", "time": "time_discharge_gas_vessel_sailed", "tr_css": "", "remarks": "remarks_discharge_gas_vessel_sailed", "activities": "@Discharge - Vessel sailed"}]', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_JSON" VALUES (5, 'timelog_crude_bunker_pipe', '[{"date": "date_loading_barge_arrived", "time": "time_loading_barge_arrived", "tr_css": "", "remarks": "remarks_loading_barge_arrived", "activities": "@Loading - Barge Arrived"}, {"date": "date_loading_nor_tendered", "time": "time_loading_nor_tendered", "tr_css": "", "remarks": "remarks_loading_nor_tendered", "activities": "@Loading - NOR Tendered"}, {"date": "date_loading_barge_all_fast_alongside", "time": "time_loading_barge_all_fast_alongside", "tr_css": "", "remarks": "remarks_loading_barge_all_fast_alongside", "activities": "@Loading - Barge All Fast / Alongside"}, {"date": "date_loading_key_meeting", "time": "time_loading_key_meeting", "tr_css": "", "remarks": "remarks_loading_key_meeting", "activities": "@Loading - Key Meeting"}, {"date": "date_loading_nor_accepted", "time": "time_loading_nor_accepted", "tr_css": "", "remarks": "remarks_loading_nor_accepted", "activities": "@Loading - Nor Accepted"}, {"date": "date_loading_valve_seealed", "time": "time_loading_valve_seealed", "tr_css": "", "remarks": "remarks_loading_valve_seealed", "activities": "@Loading - Valve Seealed"}, {"date": "date_loading_tank_inspect_meter_verification", "time": "time_loading_tank_inspect_meter_verification", "tr_css": "", "remarks": "remarks_loading_tank_inspect_meter_verification", "activities": "@Loading - Tank Inspection and Meter Verification - Initial @Depot"}, {"date": "date_hose_connected", "time": "time_hose_connected", "tr_css": "", "remarks": "remarks_hose_connected", "activities": "@Loading - Hose Connected - Initial @Depot"}, {"date": "date_loading_host_connected", "time": "time_loading_host_connected", "tr_css": "", "remarks": "remarks_loading_host_connected", "activities": "@Loading - Hose(s) Connected"}, {"date": "date_loading_loading_commenced", "time": "time_loading_loading_commenced", "tr_css": "", "remarks": "remarks_loading_loading_commenced", "activities": "@Loading - Loading Commenced"}, {"date": "date_loading_loading_completed", "time": "time_loading_loading_completed", "tr_css": "", "remarks": "remarks_loading_loading_completed", "activities": "@Loading - Loading Completed"}, {"date": "date_loading_hose_arms_disconnect", "time": "time_date_loading_hose_arms_disconnect", "tr_css": "", "remarks": "remarks_date_loading_hose_arms_disconnect", "activities": "@Loading - Hose(s) Arms Disconnected"}, {"date": "date_loading_tank_inspect_meter_verification_final", "time": "time_loading_tank_inspect_meter_verification_final", "tr_css": "", "remarks": "remarks_loading_tank_inspect_meter_verification_final", "activities": "@Loading - Tank Inspection and Meter Verification - Final @Barge"}, {"date": "date_loading_calcul_completed_doc_onboard", "time": "time_loading_calcul_completed_doc_onboard", "tr_css": "", "remarks": "remarks_loading_calcul_completed_doc_onboard", "activities": "@Loading - Calculation completed & Documents onboard"}, {"date": "date_discharge_barge_arrived", "time": "time_discharge_barge_arrived", "tr_css": "", "remarks": "remarks_discharge_barge_arrived", "activities": "@discharge - NOR Tendered"}, {"date": "date_discharge_nor_tendered", "time": "time_discharge_nor_tendered", "tr_css": "", "remarks": "remarks_discharge_nor_tendered", "activities": "@discharge - NOR Tendered"}, {"date": "date_discharge_key_meeting", "time": "time_discharge_key_meeting", "tr_css": "", "remarks": "remarks_discharge_key_meeting", "activities": "@discharge - Key Meeting"}, {"date": "date_discharge_nor_accepted", "time": "time_discharge_nor_accepted", "tr_css": "", "remarks": "remarks_discharge_nor_accepted", "activities": "@discharge - NOR Accepted"}, {"date": "date_discharge_valve_seealed", "time": "time_discharge_valve_seealed", "tr_css": "", "remarks": "remarks_discharge_valve_seealed", "activities": "@discharge - Valve Seealed @Ship"}, {"date": "date_discharge_tank_inspect_measure", "time": "time_discharge_tank_inspect_measure", "tr_css": "", "remarks": "remarks_discharge_tank_inspect_measure", "activities": "@discharge - Tank Inspection and Measurement - Initial @Ship"}, {"date": "date_visual_inspection_sampling", "time": "time_visual_inspection_sampling", "tr_css": "", "remarks": "remarks_visual_inspection_sampling", "activities": "@discharge - Visual Inspection Sampling @Ship"}, {"date": "date_discharge_host_connected", "time": "time_discharge_host_connected", "tr_css": "", "remarks": "remarks_discharge_host_connected", "activities": "@discharge - Hose(s) Connected"}, {"date": "date_discharge_bunker_commenced", "time": "time_discharge_bunker_commenced", "tr_css": "", "remarks": "remarks_discharge_bunker_commenced", "activities": "@discharge - bunker Commenced"}, {"date": "date_discharge_bunker_completed", "time": "time_discharge_bunker_completed", "tr_css": "", "remarks": "remarks_discharge_bunker_completed", "activities": "@discharge - bunker Completed"}, {"date": "date_discharge_hose_disconnect", "time": "time_date_discharge_hose_disconnect", "tr_css": "", "remarks": "remarks_date_discharge_hose_disconnect", "activities": "@discharge - Hose(s) Arms Disconnected"}, {"date": "date_discharge_tank_inspect_measr_final", "time": "time_discharge_tank_inspect_measr_final", "tr_css": "", "remarks": "remarks_discharge_tank_inspect_measr_final", "activities": "@discharge - Tank Inspection and Measurement - Final @Barge"}, {"date": "date_discharge_visual_inspection_sampling", "time": "time_discharge_visual_inspection_sampling", "tr_css": "", "remarks": "remarks_discharge_visual_inspection_sampling", "activities": "@discharge - Visual Inspection & Sampling @Ship"}, {"date": "date_discharge_calcul_completed_doc_onboard", "time": "time_discharge_calcul_completed_doc_onboard", "tr_css": "", "remarks": "remarks_discharge_calcul_completed_doc_onboard", "activities": "@discharge - Calculation completed & Documents onboard"}, {"date": "date_discharge_barge_leave_ship", "time": "time_discharge_barge_leave_ship", "tr_css": "", "remarks": "remarks_discharge_barge_leave_ship", "activities": "@discharge - Barge Leave Ship"}]', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_JSON" VALUES (9, 'timelog_petrokimia_discharge', '[{"date": "date_vessel_arrived", "time": "time_vessel_arrived", "tr_css": "", "remarks": "remarks_vessel_arrived", "activities": "Vessel Arrived"}, {"date": "date_anchoraged", "time": "time_anchoraged", "tr_css": "", "remarks": "remarks_anchoraged", "activities": "Vessel Anchoraged"}, {"date": "date_nor", "time": "time_nor", "tr_css": "", "remarks": "remarks_nor", "activities": "NOR Tendered"}, {"date": "date_accepted", "time": "time_accepted", "tr_css": "", "remarks": "remarks_accepted", "activities": "NOR Accepted"}, {"date": "date_pob", "time": "time_pob", "tr_css": "", "remarks": "remarks_pob", "activities": "Pilot On Board (for Berthing)"}, {"date": "date_a_aweigh", "time": "time_a_aweigh", "tr_css": "", "remarks": "remarks_a_aweigh", "activities": "Anchors Aweigh"}, {"date": "date_berthing", "time": "time_berthing", "tr_css": "", "remarks": "remarks_berthing", "activities": "Vessel Berthing"}, {"date": "date_surveyor_on_board", "time": "time_surveyor_on_board", "tr_css": "", "remarks": "remarks_surveyor_on_board", "activities": "Surveyor on Board"}, {"date": "date_key_meeting", "time": "time_key_meeting", "tr_css": "", "remarks": "remarks_key_meeting", "activities": "Key Meeting"}, {"date": "date_inpection_commenced", "time": "time_inpection_commenced", "tr_css": "", "remarks": "remarks_inpection_commenced", "activities": "Tanks Inspection and Calc. Commenced "}, {"date": "date_inspection_completed", "time": "time_inspection_completed", "tr_css": "", "remarks": "remarks_inspection_completed", "activities": "Tanks Inspection and Calc. Completed"}, {"date": "date_sbd_commenced", "time": "time_sbd_commenced", "tr_css": "", "remarks": "remarks_sbd_commenced", "activities": "Sampling Before Discharge Commenced"}, {"date": "date_sbd_completed", "time": "time_sbd_completed", "tr_css": "", "remarks": "remarks_sbd_completed", "activities": "Sampling Before Discharge Completed"}, {"date": "date_hose_connected", "time": "time_hose_connected", "tr_css": "", "remarks": "remarks_hose_connected", "activities": "Hose Connected"}, {"date": "date_connected_completed", "time": "time_connected_completed", "tr_css": "", "remarks": "remarks_connected_completed", "activities": "Hose Connected completed"}, {"date": "date_discharge_commenced", "time": "time_discharge_commenced", "tr_css": "", "remarks": "remarks_discharge_commenced", "activities": "Discharge commenced"}, {"date": "date_discharge_completed", "time": "time_discharge_completed", "tr_css": "", "remarks": "remarks_discharge_completed", "activities": "Discharge completed"}, {"date": "date_hose_disconnected", "time": "time_hose_disconnected", "tr_css": "", "remarks": "remarks_hose_disconnected", "activities": "Hose Disconnected"}, {"date": "date_tanks_ins_commenced", "time": "time_tanks_ins_commenced", "tr_css": "", "remarks": "remarks_tanks_ins_commenced", "activities": "Tanks Inspection Commenced"}, {"date": "date_tanks_ins_completed", "time": "time_tanks_ins_completed", "tr_css": "", "remarks": "remarks_tanks_ins_completed", "activities": "Tanks Inspection Completed"}, {"date": "date_documents_onboard", "time": "time_documents_onboard", "tr_css": "", "remarks": "remarks_documents_onboard", "activities": "Documents Onboard"}, {"date": "date_svy_left_vessel", "time": "time_svy_left_vessel", "tr_css": "", "remarks": "remarks_svy_left_vessel", "activities": "Surveyour Left Vessel"}, {"date": "date_vessel_sail", "time": "time_vessel_sail", "tr_css": "", "remarks": "remarks_vessel_sail", "activities": "Vessel sail"}]', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."KOMPONEN_JSON" VALUES (10, 'timelog_crude_bunker_vessel', '[{"date": "date_loading_barge_arrived", "time": "time_loading_barge_arrived", "tr_css": "", "remarks": "remarks_loading_barge_arrived", "activities": "@Loading - Barge Arrived"}, {"date": "date_loading_nor_tendered", "time": "time_loading_nor_tendered", "tr_css": "", "remarks": "remarks_loading_nor_tendered", "activities": "@Loading - NOR Tendered"}, {"date": "date_loading_barge_all_fast_alongside", "time": "time_loading_barge_all_fast_alongside", "tr_css": "", "remarks": "remarks_loading_barge_all_fast_alongside", "activities": "@Loading - Barge All Fast / Alongside"}, {"date": "date_loading_key_meeting", "time": "time_loading_key_meeting", "tr_css": "", "remarks": "remarks_loading_key_meeting", "activities": "@Loading - Key Meeting"}, {"date": "date_loading_valve_seealed", "time": "time_loading_valve_seealed", "tr_css": "", "remarks": "remarks_loading_valve_seealed", "activities": "@Loading - Valve Seealed"}, {"date": "date_loading_tank_inspect_measure", "time": "time_loading_tank_inspect_measure", "tr_css": "", "remarks": "remarks_loading_tank_inspect_measure", "activities": "@Loading - Tank Inspection and Measurement - Initial @Barge"}, {"date": "date_loading_tank_inspect_meter_verf", "time": "time_loading_tank_inspect_meter_verf", "tr_css": "", "remarks": "remarks_loading_tank_inspect_meter_verf", "activities": "@Loading - Tank Inspection and Meter Verification - Initial @Depot"}, {"date": "date_loading_host_connected", "time": "time_loading_host_connected", "tr_css": "", "remarks": "remarks_loading_host_connected", "activities": "@Loading - Hose(s) Connected"}, {"date": "date_loading_loading_commenced", "time": "time_loading_loading_commenced", "tr_css": "", "remarks": "remarks_loading_loading_commenced", "activities": "@Loading - Loading Commenced"}, {"date": "date_loading_loading_completed", "time": "time_loading_loading_completed", "tr_css": "", "remarks": "remarks_loading_loading_completed", "activities": "@Loading - Loading Completed"}, {"date": "date_loading_hose_arms_disconnect", "time": "time_date_loading_hose_arms_disconnect", "tr_css": "", "remarks": "remarks_date_loading_hose_arms_disconnect", "activities": "@Loading - Hose(s) Arms Disconnected"}, {"date": "date_loading_visual_inspec_sampl", "time": "time_loading_visual_inspec_sampl", "tr_css": "", "remarks": "remarks_loading_visual_inspec_sampl", "activities": "@Loading - Visual Inspection & Sampling - @Barge"}, {"date": "date_loading_tank_inspect_measr_final", "time": "time_loading_tank_inspect_measr_final", "tr_css": "", "remarks": "remarks_loading_tank_inspect_measr_final", "activities": "@Loading - Tank Inspection and Measurement - Final @Barge"}, {"date": "date_loading_tank_inspect_meter_final", "time": "time_loading_tank_inspect_meter_final", "tr_css": "", "remarks": "remarks_loading_tank_inspect_meter_final", "activities": "@Loading - Tank Inspection and Meter Verification - Final @Depot"}, {"date": "date_loading_calcul_completed_doc_onboard", "time": "time_loading_calcul_completed_doc_onboard", "tr_css": "", "remarks": "remarks_loading_calcul_completed_doc_onboard", "activities": "@Loading - Calculation completed & Documents onboard"}, {"date": "date_loading_barge_leave_depot", "time": "time_loading_barge_leave_depot", "tr_css": "", "remarks": "remarks_loading_barge_leave_depot", "activities": "@Loading - Barge Leave Depot"}, {"date": "date_discharge_barge_arrived", "time": "time_discharge_barge_arrived", "tr_css": "", "remarks": "remarks_discharge_barge_arrived", "activities": "@discharge - Barge Arrived"}, {"date": "date_discharge_nor_tendered", "time": "time_discharge_nor_tendered", "tr_css": "", "remarks": "remarks_discharge_nor_tendered", "activities": "@discharge - NOR Tendered"}, {"date": "date_discharge_barge_all_fast_alongside", "time": "time_discharge_barge_all_fast_alongside", "tr_css": "", "remarks": "remarks_discharge_barge_all_fast_alongside", "activities": "@discharge - Barge All Fast / Alongside"}, {"date": "date_discharge_key_meeting", "time": "time_discharge_key_meeting", "tr_css": "", "remarks": "remarks_discharge_key_meeting", "activities": "@discharge - Key Meeting"}, {"date": "date_discharge_valve_seealed", "time": "time_discharge_valve_seealed", "tr_css": "", "remarks": "remarks_discharge_valve_seealed", "activities": "@discharge - Valve Seealed"}, {"date": "date_discharge_tank_inspect_measure", "time": "time_discharge_tank_inspect_measure", "tr_css": "", "remarks": "remarks_discharge_tank_inspect_measure", "activities": "@discharge - Tank Inspection and Measurement - Initial @Barge"}, {"date": "date_discharge_tank_inspect_meter_verf", "time": "time_discharge_tank_inspect_meter_verf", "tr_css": "", "remarks": "remarks_discharge_tank_inspect_meter_verf", "activities": "@discharge - Tank Inspection and Meter Verification - Initial @Depot"}, {"date": "date_discharge_host_connected", "time": "time_discharge_host_connected", "tr_css": "", "remarks": "remarks_discharge_host_connected", "activities": "@discharge - Hose(s) Connected"}, {"date": "date_discharge_bunker_commenced", "time": "time_discharge_bunker_commenced", "tr_css": "", "remarks": "remarks_discharge_bunker_commenced", "activities": "@discharge - bunker Commenced"}, {"date": "date_discharge_bunker_completed", "time": "time_discharge_bunker_completed", "tr_css": "", "remarks": "remarks_discharge_bunker_completed", "activities": "@discharge - bunker Completed"}, {"date": "date_discharge_hose_arms_disconnect", "time": "time_date_discharge_hose_arms_disconnect", "tr_css": "", "remarks": "remarks_date_discharge_hose_arms_disconnect", "activities": "@discharge - Hose(s) Arms Disconnected"}, {"date": "date_discharge_visual_inspec_sampl", "time": "time_discharge_visual_inspec_sampl", "tr_css": "", "remarks": "remarks_discharge_visual_inspec_sampl", "activities": "@discharge - Visual Inspection & Sampling - @Barge"}, {"date": "date_discharge_tank_inspect_measr_final", "time": "time_discharge_tank_inspect_measr_final", "tr_css": "", "remarks": "remarks_discharge_tank_inspect_measr_final", "activities": "@discharge - Tank Inspection and Measurement - Final @Barge"}, {"date": "date_discharge_tank_inspect_meter_final", "time": "time_discharge_tank_inspect_meter_final", "tr_css": "", "remarks": "remarks_discharge_tank_inspect_meter_final", "activities": "@discharge - Tank Inspection and Meter Verification - Final @Depot"}, {"date": "date_discharge_calcul_completed_doc_onboard", "time": "time_discharge_calcul_completed_doc_onboard", "tr_css": "", "remarks": "remarks_discharge_calcul_completed_doc_onboard", "activities": "@discharge - Calculation completed & Documents onboard"}, {"date": "date_discharge_barge_leave_ship", "time": "time_discharge_barge_leave_ship", "tr_css": "", "remarks": "remarks_discharge_barge_leave_ship", "activities": "@discharge - Barge Leave Ship"}]', 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for MAP_POINT
-- ----------------------------
DROP TABLE IF EXISTS "public"."MAP_POINT";
CREATE TABLE "public"."MAP_POINT" (
  "ID" int4 NOT NULL DEFAULT nextval('"MAP_POINT_ID_seq"'::regclass),
  "NAME" text COLLATE "pg_catalog"."default",
  "LATITUDE" float8,
  "LONGITUDE" float8,
  "TYPE" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "ICON_ID" int4,
  "SITE_ID" int4,
  "CABANG_ID" int4
)
;

-- ----------------------------
-- Records of MAP_POINT
-- ----------------------------
INSERT INTO "public"."MAP_POINT" VALUES (8, 'Balikpapan', -0.711716694992859, 116.8635733125, 'vessel', NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, NULL);
INSERT INTO "public"."MAP_POINT" VALUES (7, 'Riau', 1.3975014134364, 102.0100576875, 'port', NULL, NULL, NULL, NULL, NULL, NULL, 7, 3, NULL);
INSERT INTO "public"."MAP_POINT" VALUES (9, 'Jakarta', -5.93060860237883, 107.1077139375, 'port', NULL, NULL, NULL, NULL, NULL, NULL, 7, 3, NULL);
INSERT INTO "public"."MAP_POINT" VALUES (10, 'Port Baru', -7.89675935980107, 112.161424960616, 'port', NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, NULL);
INSERT INTO "public"."MAP_POINT" VALUES (11, 'Test', -0.65935255667668, 117.456834822381, 'port', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL);
INSERT INTO "public"."MAP_POINT" VALUES (12, 'Vessel', 0.746861738138179, 107.129686384881, 'vessel', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL);
INSERT INTO "public"."MAP_POINT" VALUES (13, 'Semarang', -1.10058359450581, 101.6584951875, '0', NULL, NULL, NULL, NULL, NULL, NULL, 8, 0, 2);

-- ----------------------------
-- Table structure for MASTER_BARGE
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_BARGE";
CREATE TABLE "public"."MASTER_BARGE" (
  "BARGE_ID" int4 NOT NULL DEFAULT nextval('"MASTER_BARGE_BARGE_ID_seq"'::regclass),
  "BARGE_NAME" name(0),
  "BARGE_TYPE" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "CLIENT_SITE_ID" int4,
  "CLIENT_SITE_NAME" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of MASTER_BARGE
-- ----------------------------
INSERT INTO "public"."MASTER_BARGE" VALUES (2, 'Wilayah Balikpapan', 'Induk', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_BARGE" VALUES (4, 'LCT Celine 01', 'Standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_BARGE" VALUES (5, 'SPOB Berkat Anugerah 06', 'Standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_BARGE" VALUES (6, 'LCT Dwi Bayu', 'Standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_BARGE" VALUES (7, 'LCT Wira I', 'Standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_BARGE" VALUES (8, 'SPOB Trans Bilgit', 'Standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_BARGE" VALUES (9, 'SPOB Penajam', 'Standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_BARGE" VALUES (10, 'TK Bina III', 'Standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_BARGE" VALUES (11, 'TK Insam 02', 'Standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_BARGE" VALUES (12, 'MT Ferimas Akbar', 'Standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_BARGE" VALUES (13, 'TK KBT I', 'Standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for MASTER_BBM
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_BBM";
CREATE TABLE "public"."MASTER_BBM" (
  "BBM_ID" int4 NOT NULL DEFAULT nextval('"MASTER_BBM_BBM_ID_seq"'::regclass),
  "BBM_NAME" text COLLATE "pg_catalog"."default",
  "BBM_DESCRIPTION" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6)
)
;

-- ----------------------------
-- Records of MASTER_BBM
-- ----------------------------
INSERT INTO "public"."MASTER_BBM" VALUES (1, 'Solar', '<p>Grade A</p>', 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for MASTER_CABANG
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_CABANG";
CREATE TABLE "public"."MASTER_CABANG" (
  "CABANG_ID" int4 NOT NULL DEFAULT nextval('"MASTER_CABANG_CABANG_ID_seq"'::regclass),
  "BRANCH_NAME" text COLLATE "pg_catalog"."default",
  "BRANCH_DESCRIPTION" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6)
)
;

-- ----------------------------
-- Records of MASTER_CABANG
-- ----------------------------
INSERT INTO "public"."MASTER_CABANG" VALUES (2, 'Semarang', '<p>-</p>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_CABANG" VALUES (3, 'Yogyakarta', '<p>-</p>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_CABANG" VALUES (4, 'Makasar', '<p>-</p>', 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for MASTER_CONTRACT
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_CONTRACT";
CREATE TABLE "public"."MASTER_CONTRACT" (
  "ID" int4 NOT NULL DEFAULT nextval('"MASTER_CONTRACT_ID_seq"'::regclass),
  "CONTRACT" text COLLATE "pg_catalog"."default",
  "UPLOAD_FILE" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6)
)
;

-- ----------------------------
-- Records of MASTER_CONTRACT
-- ----------------------------
INSERT INTO "public"."MASTER_CONTRACT" VALUES (1, 'K0001/03/2017/SUC', '20170907_1434201.jpg', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_CONTRACT" VALUES (2, 'K0002/03/2017/SUC', 'Screenshot_from_2017-12-12_16-50-00.png', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_CONTRACT" VALUES (3, 'K0003/03/2017/SUC', 'Screenshot_from_2017-12-12_16-50-001.png', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_CONTRACT" VALUES (4, 'K0004/03/2017/SUC', 'Screenshot_from_2017-12-12_16-50-002.png', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_CONTRACT" VALUES (5, 'K0005/03/2017/SUC', 'Screenshot_from_2017-12-12_16-50-003.png', 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for MASTER_CV
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_CV";
CREATE TABLE "public"."MASTER_CV" (
  "ID" int4 NOT NULL DEFAULT nextval('"MASTER_CV_ID_seq"'::regclass),
  "NAMA" text COLLATE "pg_catalog"."default",
  "UPLOAD_FILE" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "POSISI" int4,
  "CONTACT_1" varchar(30) COLLATE "pg_catalog"."default",
  "CONTACT_2" varchar(30) COLLATE "pg_catalog"."default",
  "ADDRESS" text COLLATE "pg_catalog"."default",
  "BIRTHDATE" date,
  "PLACE_BIRTHDATE" varchar(100) COLLATE "pg_catalog"."default",
  "GENDER" char(1) COLLATE "pg_catalog"."default",
  "REGION" int4,
  "PHOTO_FILE" text COLLATE "pg_catalog"."default",
  "EMAIL" varchar(150) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."MASTER_CV"."GENDER" IS 'L = Male, P = Female';

-- ----------------------------
-- Records of MASTER_CV
-- ----------------------------
INSERT INTO "public"."MASTER_CV" VALUES (5, 'Bagos W', '180416082526_cv_5ad4a4460c58e_sea_1.jpg', 0, NULL, NULL, NULL, NULL, NULL, 1, '08348328', '0214243', 'Gandaria 3', '1995-06-07', 'Jakarta', 'L', 15, '180416082526_photo_5ad4a4460c595_sea_2.jpg', 'bagos24@gmail.com');

-- ----------------------------
-- Table structure for MASTER_CV_CERTIFICATE
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_CV_CERTIFICATE";
CREATE TABLE "public"."MASTER_CV_CERTIFICATE" (
  "ID" int4 NOT NULL DEFAULT nextval('"MASTER_CV_CERTIFICATE_ID_seq"'::regclass),
  "ID_CV" int4,
  "CERTIFICATE_NAME" varchar(150) COLLATE "pg_catalog"."default",
  "CERITIFICATE_EXPIRED" date,
  "CERITIFICATE_FROM" varchar(100) COLLATE "pg_catalog"."default",
  "CERITIFICATE_FILE" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of MASTER_CV_CERTIFICATE
-- ----------------------------
INSERT INTO "public"."MASTER_CV_CERTIFICATE" VALUES (14, 5, 'Sertifikat A', '2022-03-23', 'Vendor A', '180416110415_certificate_5ad4c97f7d7d2_nature_1.jpg');
INSERT INTO "public"."MASTER_CV_CERTIFICATE" VALUES (15, 5, 'Sertifikat B', '2019-03-15', 'Vendor B', '180416110415_certificate_5ad4c97f887a7_nature_2.jpg');

-- ----------------------------
-- Table structure for MASTER_CV_EDUCATION
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_CV_EDUCATION";
CREATE TABLE "public"."MASTER_CV_EDUCATION" (
  "ID" int4 NOT NULL DEFAULT nextval('"MASTER_CV_EDUCATION_ID_seq"'::regclass),
  "ID_CV" int4,
  "ID_REF_EDUCATION" int4,
  "SCHOOL" varchar(150) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of MASTER_CV_EDUCATION
-- ----------------------------
INSERT INTO "public"."MASTER_CV_EDUCATION" VALUES (101, 5, 4, 'SMKN 24');
INSERT INTO "public"."MASTER_CV_EDUCATION" VALUES (102, 5, 5, 'BSI Margonda Depok');

-- ----------------------------
-- Table structure for MASTER_CV_EXPERIENCE
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_CV_EXPERIENCE";
CREATE TABLE "public"."MASTER_CV_EXPERIENCE" (
  "ID" int4 NOT NULL DEFAULT nextval('"MASTER_CV_EXPERIENCE_ID_seq"'::regclass),
  "ID_CV" int4,
  "ID_REF_EXPERIENCE" int4,
  "LEVEL" int2
)
;
COMMENT ON COLUMN "public"."MASTER_CV_EXPERIENCE"."LEVEL" IS '1 = Beginner, 2 = Intermediate, 3 = Advance';

-- ----------------------------
-- Records of MASTER_CV_EXPERIENCE
-- ----------------------------
INSERT INTO "public"."MASTER_CV_EXPERIENCE" VALUES (79, 5, 1, 1);
INSERT INTO "public"."MASTER_CV_EXPERIENCE" VALUES (80, 5, 2, 3);
INSERT INTO "public"."MASTER_CV_EXPERIENCE" VALUES (81, 5, 3, 2);

-- ----------------------------
-- Table structure for MASTER_CV_HISTORY_OF_WORK
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_CV_HISTORY_OF_WORK";
CREATE TABLE "public"."MASTER_CV_HISTORY_OF_WORK" (
  "ID" int4 DEFAULT nextval('"MASTER_CV_HISTORY_OF_WORK_ID_seq"'::regclass),
  "COMPANY_NAME" varchar(150) COLLATE "pg_catalog"."default",
  "FROM" date,
  "END" date,
  "POSITION" varchar(100) COLLATE "pg_catalog"."default",
  "DESCRIPTION" text COLLATE "pg_catalog"."default",
  "ID_CV" int4
)
;

-- ----------------------------
-- Records of MASTER_CV_HISTORY_OF_WORK
-- ----------------------------
INSERT INTO "public"."MASTER_CV_HISTORY_OF_WORK" VALUES (69, 'PT A', '2018-01-01', '2018-02-28', 'Web Programmer', 'tESTTT', 5);
INSERT INTO "public"."MASTER_CV_HISTORY_OF_WORK" VALUES (70, 'PT B', '2018-03-01', '2018-04-16', 'Desktop Programmer', 'TESTT 2', 5);

-- ----------------------------
-- Table structure for MASTER_CV_REGION
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_CV_REGION";
CREATE TABLE "public"."MASTER_CV_REGION" (
  "ID" int4 NOT NULL DEFAULT nextval('"MASTER_CV_REGION_ID_seq"'::regclass),
  "ID_REF_REGION" int4,
  "ID_CV" int4
)
;

-- ----------------------------
-- Records of MASTER_CV_REGION
-- ----------------------------
INSERT INTO "public"."MASTER_CV_REGION" VALUES (11, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (13, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (14, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (15, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (16, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (17, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (18, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (19, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (20, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (21, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (22, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (23, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (24, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (25, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (26, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (27, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (28, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (29, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (30, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (31, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (32, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (33, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (34, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (35, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (36, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (37, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (38, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (39, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (40, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (41, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (42, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (43, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (44, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (45, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (46, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (47, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (48, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (49, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (50, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (51, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (52, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (53, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (54, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (55, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (56, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (57, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (58, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (59, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (60, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (61, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (62, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (63, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (64, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (65, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (66, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (67, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (68, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (69, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (70, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (71, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (72, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (73, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (74, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (75, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (76, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (77, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (78, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (79, 15, 5);
INSERT INTO "public"."MASTER_CV_REGION" VALUES (80, 15, 5);

-- ----------------------------
-- Table structure for MASTER_ICON_MARKER
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_ICON_MARKER";
CREATE TABLE "public"."MASTER_ICON_MARKER" (
  "ID" int4 NOT NULL DEFAULT nextval('"MASTER_ICON_MARKER_ID_seq"'::regclass),
  "NAMA" text COLLATE "pg_catalog"."default",
  "UPLOAD_FILE" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6)
)
;

-- ----------------------------
-- Records of MASTER_ICON_MARKER
-- ----------------------------
INSERT INTO "public"."MASTER_ICON_MARKER" VALUES (1, 'Icon Vessel', 'ship-front-view.png', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_ICON_MARKER" VALUES (2, 'Icon Plus', 'icon.png', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_ICON_MARKER" VALUES (3, 'Map Flag', 'map-flag-marker.png', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_ICON_MARKER" VALUES (4, 'Map Marker', 'map-marker.png', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_ICON_MARKER" VALUES (5, 'Woods Marker', 'woods-marker.png', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_ICON_MARKER" VALUES (6, 'Marker Tool', 'map-marker-tool.png', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_ICON_MARKER" VALUES (7, 'Port Marker', 'port-map-marker-point.png', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_ICON_MARKER" VALUES (8, 'Cabang', 'cityscape.png', 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for MASTER_INTERVENTION
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_INTERVENTION";
CREATE TABLE "public"."MASTER_INTERVENTION" (
  "ID" int4 NOT NULL DEFAULT nextval('"MASTER_INTERVENTION_ID_seq"'::regclass),
  "INTERVENTION_NAME" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "FILE_SOURCE" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of MASTER_INTERVENTION
-- ----------------------------
INSERT INTO "public"."MASTER_INTERVENTION" VALUES (14, 'Loading', 0, NULL, NULL, NULL, NULL, NULL, 'loading');
INSERT INTO "public"."MASTER_INTERVENTION" VALUES (15, 'Discharge', 0, NULL, NULL, NULL, NULL, NULL, 'discharge');
INSERT INTO "public"."MASTER_INTERVENTION" VALUES (23, 'Trucking', 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_INTERVENTION" VALUES (24, 'Transhipment', 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_INTERVENTION" VALUES (21, 'Bunker Pipe', 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_INTERVENTION" VALUES (25, 'Bunker Vessel', 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for MASTER_LOCATION
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_LOCATION";
CREATE TABLE "public"."MASTER_LOCATION" (
  "ID" int4 NOT NULL DEFAULT nextval('"MASTER_LOCATION_ID_seq"'::regclass),
  "LOCATION_NAME" text COLLATE "pg_catalog"."default",
  "LOCATION_DESCRIPTION" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6)
)
;

-- ----------------------------
-- Records of MASTER_LOCATION
-- ----------------------------
INSERT INTO "public"."MASTER_LOCATION" VALUES (2, 'Port #01', '<p>-</p>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_LOCATION" VALUES (4, 'Transporter ', '<p>-</p>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_LOCATION" VALUES (3, 'Port #02', '<p>-</p>', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_LOCATION" VALUES (5, 'Kapal', '<p>-</p>', 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for MASTER_PERSONIL
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_PERSONIL";
CREATE TABLE "public"."MASTER_PERSONIL" (
  "ID" int4 NOT NULL DEFAULT nextval('"MASTER_PERSONIL_ID_seq"'::regclass),
  "POSISI" text COLLATE "pg_catalog"."default",
  "NAMA" text COLLATE "pg_catalog"."default",
  "UPLOAD_FILE" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6)
)
;

-- ----------------------------
-- Records of MASTER_PERSONIL
-- ----------------------------
INSERT INTO "public"."MASTER_PERSONIL" VALUES (3, 'Jakarta', '10', 'Screenshot_from_2018-01-12_16-51-22.png', 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for MASTER_PORT
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_PORT";
CREATE TABLE "public"."MASTER_PORT" (
  "PORT_ID" int4 NOT NULL DEFAULT nextval('"MASTER_PORT_PORT_ID_seq"'::regclass),
  "PORT_NAME" name(0),
  "PORT_TYPE" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "CLIENT_SITE_ID" int4,
  "CLIENT_SITE_NAME" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of MASTER_PORT
-- ----------------------------
INSERT INTO "public"."MASTER_PORT" VALUES (6, 'Ambon', 'Control', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_PORT" VALUES (7, 'Bitung', 'Control', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_PORT" VALUES (8, 'Jakarta', 'Control', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_PORT" VALUES (9, 'Makasar', 'Control', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_PORT" VALUES (10, 'Surabaya', 'Control', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_PORT" VALUES (11, 'Semarang', 'Control', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for MASTER_PRODUCT
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_PRODUCT";
CREATE TABLE "public"."MASTER_PRODUCT" (
  "PRODUCT_ID" int4 NOT NULL DEFAULT nextval('"MASTER_PRODUCT_ID_seq"'::regclass),
  "PRODUCT_LEVEL" int4,
  "PRODUCT_REFERENCE" int4,
  "PRODUCT_NAME" text COLLATE "pg_catalog"."default",
  "WEIGHT" int4,
  "SHOW" int4,
  "HIERARCHY" int4,
  "BASICHIERARCHY" int4,
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of MASTER_PRODUCT
-- ----------------------------
INSERT INTO "public"."MASTER_PRODUCT" VALUES (6, 1, 0, 'Cruide / Minyak Mentah', 0, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_PRODUCT" VALUES (7, 1, 0, 'Produk Minyak / Petrolium Product', 1, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_PRODUCT" VALUES (8, 1, 0, 'Petrokimia', 2, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_PRODUCT" VALUES (9, 1, 0, 'Gas', 4, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_PRODUCT" VALUES (10, 2, 9, 'LNG', 1, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_PRODUCT" VALUES (11, 2, 9, 'LPG', 2, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_PRODUCT" VALUES (12, 2, 9, 'Chem Gas', 3, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_PRODUCT" VALUES (13, 2, 7, 'Int Produk', 1, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_PRODUCT" VALUES (14, 2, 7, 'End Product', 2, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for MASTER_STDREF
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_STDREF";
CREATE TABLE "public"."MASTER_STDREF" (
  "ID" int4 NOT NULL DEFAULT nextval('"MASTER_STDREF_ID_seq"'::regclass),
  "STD_REF" text COLLATE "pg_catalog"."default",
  "UPLOAD_FILE" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "CONTENT_INFO" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of MASTER_STDREF
-- ----------------------------
INSERT INTO "public"."MASTER_STDREF" VALUES (5, 'PERATURAN PEMERINTAH NO.50 TAHUN 2012', 'PP_No__50_Tahun_2012_tentang_Penerapan_SMK3_1.pdf', 0, NULL, NULL, NULL, NULL, NULL, 'Peraturan Pemerintah Republik Indonesia No.50 Tahun 2012 Tentang Sistem Manajemen Keselamatan dan Kesehatan Kerja');
INSERT INTO "public"."MASTER_STDREF" VALUES (3, 'UNDANG UNDANG NEGARA REPUBLIK INDONESIA NO.20 TAHUN 2014', 'UU-20_TAHUN_2014_TENTANG_SPK1.pdf', 0, NULL, NULL, NULL, NULL, NULL, 'Undang-Undang Republik Indonesia Nomor 20 Tahun 2014 Tentang Standadisasi dan penilaian Kesesuaian ');

-- ----------------------------
-- Table structure for MASTER_TOOL
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_TOOL";
CREATE TABLE "public"."MASTER_TOOL" (
  "ID" int4 NOT NULL DEFAULT nextval('"MASTER_TOOL_ID_seq"'::regclass),
  "JENIS" text COLLATE "pg_catalog"."default",
  "NAMA" text COLLATE "pg_catalog"."default",
  "LOKASI" text COLLATE "pg_catalog"."default",
  "JUMLAH" int4,
  "UPLOAD_SERTIFIKAT" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6)
)
;

-- ----------------------------
-- Records of MASTER_TOOL
-- ----------------------------
INSERT INTO "public"."MASTER_TOOL" VALUES (1, 'Type A', 'Name Of A', 'Location Of A', 12345, 'Screenshot_from_2017-09-08_09-00-46.png', 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for MASTER_VESSEL
-- ----------------------------
DROP TABLE IF EXISTS "public"."MASTER_VESSEL";
CREATE TABLE "public"."MASTER_VESSEL" (
  "VESSEL_ID" int4 NOT NULL DEFAULT nextval('"MASTER_VESSEL_VESSEL_ID_seq"'::regclass),
  "VESSEL_NAME" name(0),
  "VESSEL_TYPE" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "CLIENT_SITE_ID" int4,
  "CLIENT_SITE_NAME" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of MASTER_VESSEL
-- ----------------------------
INSERT INTO "public"."MASTER_VESSEL" VALUES (3, 'KM Tatamailau', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (4, 'KM Dorolonda', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (5, 'KM Dobonsolo', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (6, 'KM Kelud', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (7, 'KM Lawit', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (8, 'KM Umsini', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (9, 'KM Gunung Dempo', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (10, 'KM Ciremai', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (11, 'KM Nggapulu', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (12, 'KM Lambelu', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (13, 'KM Bukit Siguntang', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (14, 'KM Binaiya', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (15, 'KM Tidar', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (16, 'KM Sirimau', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (17, 'KM Egon', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (18, 'KM Awu', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (19, 'KM Sinabung', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (20, 'KM Tidar', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (21, 'KM Labobar', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (22, 'KM Nggapulu', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (23, 'KM Kelimutu', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (24, 'KM Lawit', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (25, 'KM Tilongkabila', 'Loader', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (26, 'KM Pangrango', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."MASTER_VESSEL" VALUES (27, 'KM Sangiang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for REF_EDUCATION
-- ----------------------------
DROP TABLE IF EXISTS "public"."REF_EDUCATION";
CREATE TABLE "public"."REF_EDUCATION" (
  "ID_REF_EDUCATION" int4 NOT NULL,
  "EDUCATION_TYPE" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of REF_EDUCATION
-- ----------------------------
INSERT INTO "public"."REF_EDUCATION" VALUES (1, 'SD');
INSERT INTO "public"."REF_EDUCATION" VALUES (2, 'SMP/MTS');
INSERT INTO "public"."REF_EDUCATION" VALUES (3, 'SMA/MA');
INSERT INTO "public"."REF_EDUCATION" VALUES (4, 'SMK');
INSERT INTO "public"."REF_EDUCATION" VALUES (5, 'D3');
INSERT INTO "public"."REF_EDUCATION" VALUES (6, 'S1');
INSERT INTO "public"."REF_EDUCATION" VALUES (7, 'S2');
INSERT INTO "public"."REF_EDUCATION" VALUES (8, 'S3');

-- ----------------------------
-- Table structure for REF_EXP
-- ----------------------------
DROP TABLE IF EXISTS "public"."REF_EXP";
CREATE TABLE "public"."REF_EXP" (
  "ID_REF_EXP" int4 NOT NULL DEFAULT nextval('"REF_EXP_ID_seq"'::regclass),
  "EXP_TYPE" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of REF_EXP
-- ----------------------------
INSERT INTO "public"."REF_EXP" VALUES (1, 'Designer');
INSERT INTO "public"."REF_EXP" VALUES (2, 'Programmer');
INSERT INTO "public"."REF_EXP" VALUES (3, 'Photography');
INSERT INTO "public"."REF_EXP" VALUES (5, 'Writer');

-- ----------------------------
-- Table structure for REF_POSITION
-- ----------------------------
DROP TABLE IF EXISTS "public"."REF_POSITION";
CREATE TABLE "public"."REF_POSITION" (
  "ID_REF_POSITION" int4 NOT NULL DEFAULT nextval('"REF_POSITION_ID_seq"'::regclass),
  "POSITION" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of REF_POSITION
-- ----------------------------
INSERT INTO "public"."REF_POSITION" VALUES (1, 'Technical Inspector I');
INSERT INTO "public"."REF_POSITION" VALUES (2, 'Technical Inspector II');
INSERT INTO "public"."REF_POSITION" VALUES (3, 'Technical Inspector III');
INSERT INTO "public"."REF_POSITION" VALUES (4, 'Project Manager');

-- ----------------------------
-- Table structure for REF_REGION
-- ----------------------------
DROP TABLE IF EXISTS "public"."REF_REGION";
CREATE TABLE "public"."REF_REGION" (
  "ID_REF_REGION" int4 DEFAULT nextval('"REF_REGION_ID_seq"'::regclass),
  "REGION" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of REF_REGION
-- ----------------------------
INSERT INTO "public"."REF_REGION" VALUES (1, 'Bandar Lampung');
INSERT INTO "public"."REF_REGION" VALUES (2, 'Bandung');
INSERT INTO "public"."REF_REGION" VALUES (3, 'Bengkulu');
INSERT INTO "public"."REF_REGION" VALUES (4, 'Batam');
INSERT INTO "public"."REF_REGION" VALUES (5, 'Writer');
INSERT INTO "public"."REF_REGION" VALUES (6, 'Cilacap');
INSERT INTO "public"."REF_REGION" VALUES (7, 'Balikpapan');
INSERT INTO "public"."REF_REGION" VALUES (8, 'Cilegon');
INSERT INTO "public"."REF_REGION" VALUES (9, 'Cirebon');
INSERT INTO "public"."REF_REGION" VALUES (10, 'Bekasi');
INSERT INTO "public"."REF_REGION" VALUES (11, 'Batu Licin (BJM)');
INSERT INTO "public"."REF_REGION" VALUES (12, 'Bontang');
INSERT INTO "public"."REF_REGION" VALUES (13, 'Dumai');
INSERT INTO "public"."REF_REGION" VALUES (14, 'Semarang');
INSERT INTO "public"."REF_REGION" VALUES (15, 'Jakarta');
INSERT INTO "public"."REF_REGION" VALUES (16, 'Denpasar');
INSERT INTO "public"."REF_REGION" VALUES (17, 'Jambi');
INSERT INTO "public"."REF_REGION" VALUES (18, 'Makassar');
INSERT INTO "public"."REF_REGION" VALUES (19, 'Medan');
INSERT INTO "public"."REF_REGION" VALUES (20, 'Pontianak');
INSERT INTO "public"."REF_REGION" VALUES (21, 'Padang');
INSERT INTO "public"."REF_REGION" VALUES (22, 'Samarinda');
INSERT INTO "public"."REF_REGION" VALUES (23, 'Palembang');
INSERT INTO "public"."REF_REGION" VALUES (24, 'Pekanbaru');
INSERT INTO "public"."REF_REGION" VALUES (25, 'Surabaya');
INSERT INTO "public"."REF_REGION" VALUES (26, 'Sangatta');
INSERT INTO "public"."REF_REGION" VALUES (27, 'Tarakan');
INSERT INTO "public"."REF_REGION" VALUES (28, 'Dondang');
INSERT INTO "public"."REF_REGION" VALUES (29, 'Timika');
INSERT INTO "public"."REF_REGION" VALUES (30, 'Duri (Riau)');
INSERT INTO "public"."REF_REGION" VALUES (31, 'Gresik');

-- ----------------------------
-- Table structure for RUNNING_TEXT
-- ----------------------------
DROP TABLE IF EXISTS "public"."RUNNING_TEXT";
CREATE TABLE "public"."RUNNING_TEXT" (
  "RUNNING_TEXT_ID" int4 NOT NULL DEFAULT nextval('"RUNNING_TEXT_RUNNING_TEXT_ID_seq"'::regclass),
  "MESSAGE" text COLLATE "pg_catalog"."default",
  "DISPLAY_START_TIME" timestamp(6),
  "DISPLAY_STOP_TIME" timestamp(6),
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "CLIENT_SITE_ID" int4
)
;

-- ----------------------------
-- Records of RUNNING_TEXT
-- ----------------------------
INSERT INTO "public"."RUNNING_TEXT" VALUES (86, '<p>Alert Loss</p>', '2018-03-03 18:04:00', '2018-03-04 18:04:00', 0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO "public"."RUNNING_TEXT" VALUES (87, '<p>PLN Losses 312 litter hari ini</p>', '2018-03-03 18:07:00', '2018-03-05 18:07:00', 0, NULL, NULL, NULL, NULL, NULL, 2);

-- ----------------------------
-- Table structure for WA
-- ----------------------------
DROP TABLE IF EXISTS "public"."WA";
CREATE TABLE "public"."WA" (
  "ID" int4 NOT NULL DEFAULT nextval('"WA_ID_seq"'::regclass),
  "CONTACT" varchar(255) COLLATE "pg_catalog"."default",
  "MESSAGE" varchar(255) COLLATE "pg_catalog"."default",
  "STATUS" int4 DEFAULT 0
)
;

-- ----------------------------
-- Records of WA
-- ----------------------------
INSERT INTO "public"."WA" VALUES (1, 'Ridwansyah', 'Db Connect', 1);
INSERT INTO "public"."WA" VALUES (2, 'mas rizal', 'Db Connect', 1);
INSERT INTO "public"."WA" VALUES (3, 'mas rizal', 'Bot Wa', 1);
INSERT INTO "public"."WA" VALUES (4, 'mas rizal', 'Db Disconnect', 1);
INSERT INTO "public"."WA" VALUES (5, 'Ridwansyah', 'Db Disconnect', 1);
INSERT INTO "public"."WA" VALUES (6, 'mas rizal', 'Bot Wa', 1);
INSERT INTO "public"."WA" VALUES (7, 'mas rizal', 'Db Connect', 1);

-- ----------------------------
-- Table structure for WEBSITE_ARTICLE
-- ----------------------------
DROP TABLE IF EXISTS "public"."WEBSITE_ARTICLE";
CREATE TABLE "public"."WEBSITE_ARTICLE" (
  "ARTICLE_ID" int4 NOT NULL DEFAULT nextval('"WEBSITE_ARTICLE_ID_seq"'::regclass),
  "ARTICLE_CATEGORY_ID" int4 NOT NULL,
  "TITLE" text COLLATE "pg_catalog"."default",
  "CONTENT" text COLLATE "pg_catalog"."default",
  "STATUS" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of WEBSITE_ARTICLE
-- ----------------------------
INSERT INTO "public"."WEBSITE_ARTICLE" VALUES (2, 1, 'Terjadi pencurian minyak 12000 KL di kepulauan riau.', '<p><em><strong>asdfasdfasd</strong></em></p>', 'Y', 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for WEBSITE_ARTICLE_CATEGORY
-- ----------------------------
DROP TABLE IF EXISTS "public"."WEBSITE_ARTICLE_CATEGORY";
CREATE TABLE "public"."WEBSITE_ARTICLE_CATEGORY" (
  "ARTICLE_CATEGORY_ID" int4 NOT NULL DEFAULT nextval('"WEBSITE_ARTICLE_CATEGORY_ID_seq"'::regclass),
  "CATEGORY_NAME" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of WEBSITE_ARTICLE_CATEGORY
-- ----------------------------
INSERT INTO "public"."WEBSITE_ARTICLE_CATEGORY" VALUES (1, 'Public', 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."WEBSITE_ARTICLE_CATEGORY" VALUES (2, 'Non Public', 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for WEBSITE_MENU
-- ----------------------------
DROP TABLE IF EXISTS "public"."WEBSITE_MENU";
CREATE TABLE "public"."WEBSITE_MENU" (
  "MENU_ID" int4 NOT NULL DEFAULT nextval('"WEBSITE_MENU_MENU_ID_seq"'::regclass),
  "MENU_LEVEL" int4,
  "REFERENCE" int4,
  "TITLE" text COLLATE "pg_catalog"."default",
  "URL" text COLLATE "pg_catalog"."default",
  "REMARK" text COLLATE "pg_catalog"."default",
  "TARGET" text COLLATE "pg_catalog"."default",
  "IMAGE" text COLLATE "pg_catalog"."default",
  "WEIGHT" int4,
  "SHOW" int4,
  "HIERARCHY" int4,
  "BASICHIERARCHY" int4,
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of WEBSITE_MENU
-- ----------------------------
INSERT INTO "public"."WEBSITE_MENU" VALUES (1, 1, 0, 'Home', '', 'Home', '', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."WEBSITE_MENU" VALUES (13, 1, 0, 'Log In', 'login', 'Log In', '', '', 4, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."WEBSITE_MENU" VALUES (5, 1, 0, 'Services', '/layanan_kami', 'Layanan Kami', '', '', 2, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."WEBSITE_MENU" VALUES (2, 1, 0, 'Tentang Kami', 'page/index/tentang-kami', 'Tentang Kami', '_self', '', 1, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."WEBSITE_MENU" VALUES (17, 1, 0, 'Hotline', 'page/index/hotline-kontak-layanan', 'Hotline Layanan Kontak', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."WEBSITE_MENU" VALUES (18, 2, 5, 'SCI', 'http://www.sucofindo.co.id/', 'Web Resmi Sucofindo', '_self', '', 0, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."WEBSITE_MENU" VALUES (21, 2, 5, 'HMPM & SBU', 'http://localhost/uploads/file_manager/KD_20-2015-Penetapan_Portofolio-Spesifikasi_Jasa.pdf', 'HMPM', '_self', '', 1, 1, NULL, NULL, 0, NULL, '', NULL, '', NULL, NULL);
INSERT INTO "public"."WEBSITE_MENU" VALUES (22, 2, 5, 'Standard & Reference', 'page/index/standard-reference', 'Standard & Reference', '__self', '', 3, 1, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for WEBSITE_PAGE_STATIC
-- ----------------------------
DROP TABLE IF EXISTS "public"."WEBSITE_PAGE_STATIC";
CREATE TABLE "public"."WEBSITE_PAGE_STATIC" (
  "PAGE_STATIC_ID" int4 NOT NULL DEFAULT nextval('"WEBSITE_PAGE_STATIC_ID_seq"'::regclass),
  "TITLE" text COLLATE "pg_catalog"."default",
  "CONTENT" text COLLATE "pg_catalog"."default",
  "STATUS" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default",
  "URL" text COLLATE "pg_catalog"."default",
  "SEO_TITLE" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of WEBSITE_PAGE_STATIC
-- ----------------------------
INSERT INTO "public"."WEBSITE_PAGE_STATIC" VALUES (14, 'Hotline Kontak Layanan', '<section class=\"section-60 section-sm-90 bg-gray-lighter\" style=\"padding: 3px 1px 1px 1px;\">
<div class=\"container\">
<div class=\"col-xs-6\"><br /><br /> <span style=\"font-size: 30px;\">CONTACT</span> <br /> <span style=\"font-weight: bold; font-size: 20px;\">TELP</span> <br /> <span style=\"font-weight: bold; font-size: 15px;\"><u>(021)98876776</u></span> <br /><br /> <span style=\"font-weight: bold; font-size: 20px;\">EMAIL</span> <br /> <span style=\"font-weight: bold; font-size: 15px;\">sucofindo.migas.co.id</span> <br /><br /> <span style=\"font-weight: bold; font-size: 20px;\">LOCATION</span> <br /> <span style=\"font-weight: bold; font-size: 15px;\">Graha Sucofindo Lt. 1, Jl. Raya Pasar Minggu, Kav. 34, RT.4/RW.1, Pancoran, RT.4/RW.1, RT.4/RW.1, Pancoran, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12780</span></div>
<div class=\"col-xs-6\"><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.1674340275576!2d106.82345761424789!3d-6.241651962855403!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f3dc699c3b95%3A0x2a63f3400dfa49ed!2sSucofindo+Duren+Tiga!5e0!3m2!1sid!2sid!4v1519122872585\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></div>
</div>
</section>', 'Y', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'hotline-kontak-layanan', 'hotline-kontak-layanan');
INSERT INTO "public"."WEBSITE_PAGE_STATIC" VALUES (15, 'Tentang Kami', '<section class=\"section-60 section-sm-90 bg-gray-lighter\" style=\"padding: 3px 1px 1px 1px;\">
<div class=\"container\">
<div class=\"col-xs-12\"><br /><br />
<section class=\"section-60 section-sm-90 bg-gray-lighter\" style=\"padding: 3px 1px 1px 1px;\">
<div class=\"shell\">
<div class=\"range\">
<div class=\"cell-xs-6 cell-sm-4 cell-md-3\">
<div class=\"thumbnail thumbnail-variant-1\">
<div class=\"thumbnail-image\"><img src=\"http://localhost/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
<div class=\"thumbnail-image-inner\">&nbsp;</div>
</div>
<div class=\"thumbnail-caption\">
<h5 class=\"header\"><a>ERWIN S.P. SIBUEA</a></h5>
<p>KEPALA SBU HULU MIGAS &amp; PRODUK MIGAS<br />Phone : 0811551342<br />Email : erwins@sucofindo.co.id</p>
</div>
</div>
</div>
<div class=\"cell-xs-6 cell-sm-4 cell-md-3\">
<div class=\"thumbnail thumbnail-variant-1\">
<div class=\"thumbnail-image\"><img src=\"http://localhost/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
<div class=\"thumbnail-image-inner\">&nbsp;</div>
</div>
<div class=\"thumbnail-caption\">
<h5 class=\"header\"><a>AGUS MUFRIZON</a></h5>
<p>KABAG. PENGEMBANGAN JASA<br />Phone : 081318280808<br />Email : mufrizon@sucofindo.co.id</p>
</div>
</div>
</div>
<div class=\"cell-xs-6 cell-sm-4 cell-md-3\">
<div class=\"thumbnail thumbnail-variant-1\">
<div class=\"thumbnail-image\"><img src=\"http://localhost/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
<div class=\"thumbnail-image-inner\">&nbsp;</div>
</div>
<div class=\"thumbnail-caption\">
<h5 class=\"header\"><a>HARI NURBIANTO</a></h5>
<p>KABAG. PENJUALAN, DUKUNGAN OPERASI &amp; SUMBERDAYA<br />Phone : 08129787770<br />Email : hnurbianto@sucofindo.co.id</p>
</div>
</div>
</div>
<div class=\"cell-xs-6 cell-sm-4 cell-md-3\">
<div class=\"thumbnail thumbnail-variant-1\">
<div class=\"thumbnail-image\"><img src=\"http://localhost/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
<div class=\"thumbnail-image-inner\">&nbsp;</div>
</div>
<div class=\"thumbnail-caption\">
<h5 class=\"header\"><a>HENDY BARKAT</a></h5>
<p>KABAG. GEOSCIENCES &amp; OIL FIELD SERVICES<br />Phone : 08121076202<br />Email : hendy@sucofindo.co.id</p>
</div>
</div>
</div>
<div class=\"cell-xs-6 cell-sm-4 cell-md-3\">
<div class=\"thumbnail thumbnail-variant-1\">
<div class=\"thumbnail-image\"><img src=\"http://localhost/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
<div class=\"thumbnail-image-inner\">&nbsp;</div>
</div>
<div class=\"thumbnail-caption\">
<h5 class=\"header\"><a>TUBAGUS HARYAWAN</a></h5>
<p>KA.BAG. PRODUK MIGAS DAN PETROKIMIA<br />Phone : 08121076201<br />Email : tubagus@sucofindo.co.id</p>
</div>
</div>
</div>
<div class=\"cell-xs-6 cell-sm-4 cell-md-3\">
<div class=\"thumbnail thumbnail-variant-1\">
<div class=\"thumbnail-image\"><img src=\"http://localhost/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
<div class=\"thumbnail-image-inner\">&nbsp;</div>
</div>
<div class=\"thumbnail-caption\">
<h5 class=\"header\"><a>BUDI RACHMANTO</a></h5>
<p>KASUBAG. PENGELOLAAN SUMBERDAYA<br />Phone : 081385459495<br />Email : budir@sucofindo.co.id</p>
</div>
</div>
</div>
<div class=\"cell-xs-6 cell-sm-4 cell-md-3\">
<div class=\"thumbnail thumbnail-variant-1\">
<div class=\"thumbnail-image\"><img src=\"http://localhost/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
<div class=\"thumbnail-image-inner\">&nbsp;</div>
</div>
<div class=\"thumbnail-caption\">
<h5 class=\"header\"><a>MIRA PERMATASARI</a></h5>
<p>PJS. KASUBAG. PENJUALAN &amp; ADMINISTRASI OPERASI<br />Phone : 082114602139<br />Email : mira@sucofindo.co.id</p>
</div>
</div>
</div>
<div class=\"cell-xs-6 cell-sm-4 cell-md-3\">
<div class=\"thumbnail thumbnail-variant-1\">
<div class=\"thumbnail-image\"><img src=\"http://localhost/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
<div class=\"thumbnail-image-inner\">&nbsp;</div>
</div>
<div class=\"thumbnail-caption\">
<h5 class=\"header\"><a>IRSAL MUKHTAR</a></h5>
<p>JUNIOR SUPERINTENDENT<br />Phone : 08112331173<br />Email : irsal@sucofindo.co.id</p>
</div>
</div>
</div>
<div class=\"cell-xs-6 cell-sm-4 cell-md-3\">
<div class=\"thumbnail thumbnail-variant-1\">
<div class=\"thumbnail-image\"><img src=\"http://localhost/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
<div class=\"thumbnail-image-inner\">&nbsp;</div>
</div>
<div class=\"thumbnail-caption\">
<h5 class=\"header\"><a>DAUNG HADINATA</a></h5>
<p>PROJECT MANAGER <br />Phone : 081381735790<br />Email : hadinata@sucofindo.co.id</p>
</div>
</div>
</div>
</div>
</div>
</section>
<center><button id=\"btn-selengkapnya\" class=\"btn btn-sm btn-primary\" style=\"height: 30px; padding-top: 4px;\">Sedang memuat...</button></center>
<div id=\"div-selengkapnya\" style=\"display: none;\"><span style=\"font-size: 30px;\">Apa itu Sucofindo ?</span> <br /><br /> <span style=\"font-size: 17px;\">Sucofindo adalah perusahaan inspeksi pertama di Indonesia. Sebagian besar sahamnya, yaitu 95 persen, dikuasai negara dan lima persen milik Societe Generale de Surveillance Holding SA (&ldquo;SGS&rdquo;). Sucofindo berdiri pada 22 Oktober 1956. Bisnis ini bermula dari kegiatan perdagangan terutama komoditas pertanian, dan kelancaran arus barang dan pengamanan devisa negara dalam perdagangan ekspor-impor. Seiring dengan perkembangan kebutuhan dunia usaha, Sucofindo melakukan langkah kreatif dan menawarkan inovasi jasa-jasa baru berbasis kompetensinya.</span> <br /><br /> <span style=\"font-size: 17px;\"> Bisnis jasa pertama yang dimiliki Sucofindo adalah cargo superintendence dan inspeksi. Kemudian melalui studi analisis dan inovasi, Sucofindo melakukan diversifikasi jasa sehingga lahirlah jasa-jasa warehousing dan forwarding, analytical laboratories, industrial and marine engineering, dan fumigation and industrial hygiene. Keanekaragaman jasa-jasa Sucofindo dikemas secara terpadu, jaringan kerja Laboratorium, cabang dan titik layanan di berbagai Kota di Indonesia serta didukung oleh 2.646 Tenaga Profesional yang ahli di bidangnya. </span></div>
<br /><br /></div>
</div>
</section>
<script type=\"text/javascript\">// <![CDATA[
(function defer() {
				if (window.jQuery) {
$(\"#btn-selengkapnya\").html(\''Lihat Selengkapnya <i class=\"fas fa-angle-down\"></i>\'');
				  var flag = false;
				  $(\"#btn-selengkapnya\").on(\"click\",function(){
				    if(!flag) {
				      $(\"#div-selengkapnya\").slideDown();
				      $(\"#btn-selengkapnya\").html(\''Sembunyikan Selengkapnya <i class=\"fas fa-angle-up\"></i>\'');
				      flag = true;
				    } else {
				      $(\"#div-selengkapnya\").slideUp();
				      $(\"#btn-selengkapnya\").html(\''Lihat Selengkapnya <i class=\"fas fa-angle-down\"></i>\'');
				      flag = false;
				    }
				  });
			    } else {
			       setTimeout(function() { defer() }, 2000);
			    }
			 })();
// ]]></script>', 'Y', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tentang-kami', 'tentang-kami');
INSERT INTO "public"."WEBSITE_PAGE_STATIC" VALUES (17, 'Standard Reference', '<section class=\"section-60 section-sm-90 bg-gray-lighter\" style=\"padding: 3px 1px 1px 1px;\"><br /><br />
<div class=\"container\">
<div class=\"col-xs-12\">
<table id=\"destination_table\" style=\"width: 100%;\">
<tbody>
<tr>
<td>
<table style=\"border-bottom: 1px dotted #666; margin-top: 5px; margin-bottom: 5px; width: 100%; border-spacing: 0px 25px 25px;\">
<tbody>
<tr>
<td>Sedang memuat data ...</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<br /><br /></section>
<script type=\"text/javascript\">// <![CDATA[
	function create_table(title,content,file,icon) {
        return \''<table style=\"border-bottom: 1px dotted #666;margin-top:5px;margin-top:5px;margin-bottom:5px;width: 100%;border-spacing: 0px 25px 25px;\">\''+
						\''<tr>\''+
							\''<td style=\"padding-bottom:10px;width:100px;padding-left:5px;\" rowspan=\"2\">\''+
								\''<img src=\"http://localhost/assets/public/images/\''+icon+\''\" />\''+
							\''</td>\''+
							\''<td style=\"padding-left:5px;\"><a href=\"\''+file+\''\"><span style=\"font-size:17px;\">\''+title+\''</span></a></td>\''+
						\''</tr>\''+
						\''<tr>\''+
							\''<td style=\"padding-left:5px;\">\''+
								\''<small>ukuran file : 23kb, tipe file : pdf</small><br />\''+
								content+
							\''</td>\''+
						\''</tr>\''+
					\''</table>\'';		
	}
    (function defer() {
        if (window.jQuery) {
        	$(\"#destination_table\").empty();
        	$.get(\"http://localhost/index.php/SR_Rest/get_all_with_pagination\",function (json) {
        		if(json.length > 0) {
        			for(var i = 0; i < json.length; i++) {
        				$(\"#destination_table\").append(create_table(json[i].STD_REF,json[i].CONTENT_INFO,\"http://localhost/uploads/stdref_files/\"+json[i].UPLOAD_FILE,\"pdf.png\"));
        			}
        		}
        	});
			
        } else {
           setTimeout(function() { defer() }, 2000);
        }
    })();
// ]]></script>', 'Y', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'standard-reference', 'standard-reference');

-- ----------------------------
-- Table structure for WEBSITE_SLIDER
-- ----------------------------
DROP TABLE IF EXISTS "public"."WEBSITE_SLIDER";
CREATE TABLE "public"."WEBSITE_SLIDER" (
  "SLIDER_ID" int4 NOT NULL DEFAULT nextval('"WEBSITE_SLIDER_ID_seq"'::regclass),
  "NAME" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default",
  "STATUS" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of WEBSITE_SLIDER
-- ----------------------------
INSERT INTO "public"."WEBSITE_SLIDER" VALUES (4, 'Profile Slider', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Y');

-- ----------------------------
-- Table structure for WEBSITE_SLIDER_DETAIL
-- ----------------------------
DROP TABLE IF EXISTS "public"."WEBSITE_SLIDER_DETAIL";
CREATE TABLE "public"."WEBSITE_SLIDER_DETAIL" (
  "SLIDER_DETAIL_ID" int4 NOT NULL DEFAULT nextval('"WEBSITE_SLIDER_DETAIL_ID_seq"'::regclass),
  "SLIDER_ID" int4,
  "TITLE" text COLLATE "pg_catalog"."default",
  "CONTENT" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default",
  "PATH" text COLLATE "pg_catalog"."default",
  "FILE_NAME" text COLLATE "pg_catalog"."default",
  "STATUS" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of WEBSITE_SLIDER_DETAIL
-- ----------------------------
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES (16, 4, 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>Inspeksi dapat dilakukan dengan berbagai cara sesuai dengan </strong><br><strong>kebutuhan dan diutamakan dengan pengujian tanpa rusak sehingga </strong><br><strong>tidak membawa dampak bagi kegiatan operasional perusahaan</strong>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/slider/WhatsApp_Image_2017-11-13_at_06_05_52.jpeg', 'WhatsApp_Image_2017-11-13_at_06_05_52.jpeg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES (11, 4, 'SUCOFINDO | <small>Assure Your Confidence</small>', '- Kalibrasi Alat Ukur dan Alat Uji <br> - Uji Tanpa Rusak <br> - Inspeksi dan Audit atas Menara Pengeboran (Rig) <br> - Inspeksi OCTG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/slider/WhatsApp_Image_2017-11-13_at_06_05_48.jpeg', 'WhatsApp_Image_2017-11-13_at_06_05_48.jpeg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES (17, 4, 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>Inspeksi dapat dilakukan dengan berbagai cara sesuai dengan </strong><br><strong>kebutuhan dan diutamakan dengan pengujian tanpa rusak sehingga </strong><br><strong>tidak membawa dampak bagi kegiatan operasional perusahaan</strong>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/slider/WhatsApp_Image_2017-11-13_at_06_05_51.jpeg', 'WhatsApp_Image_2017-11-13_at_06_05_51.jpeg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES (18, 4, 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>PT. Sucofindo (Persero) | SUCOFINDO melakukan verifikasi, </strong><br><strong>review, pemeriksaan dan evaluasi terhadap fasilitas produksi </strong><br><strong>migas hulu,seperti pada fasilitas ekstrasi, mulai tahap disain,</strong><br><strong> pabrikasi, instalasi, operasional sampai dengan pemeliharaannya </strong><br><strong>untuk memastikan peralatan dan fasilitas bekerja sesuai dengan </strong><br><strong>spesifikasi dan aman untuk dioperasikan</strong>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/slider/WhatsApp_Image_2017-11-13_at_06_05_50.jpeg', 'WhatsApp_Image_2017-11-13_at_06_05_50.jpeg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES (9, 4, 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>PT. Sucofindo (Persero) | SUCOFINDO melakukan verifikasi, </strong><br><strong>review, pemeriksaan dan evaluasi terhadap fasilitas produksi </strong><br><strong>migas hulu,seperti pada fasilitas ekstrasi, mulai tahap disain,</strong><br><strong> pabrikasi, instalasi, operasional sampai dengan pemeliharaannya </strong><br><strong>untuk memastikan peralatan dan fasilitas bekerja sesuai dengan </strong><br><strong>spesifikasi dan aman untuk dioperasikan</strong>', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/slider/WhatsApp_Image_2017-11-13_at_06_05_47.jpeg', 'WhatsApp_Image_2017-11-13_at_06_05_47.jpeg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES (10, 4, 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>Inspeksi dapat dilakukan dengan berbagai cara sesuai dengan </strong><br><strong>kebutuhan dan diutamakan dengan pengujian tanpa rusak sehingga </strong><br><strong>tidak membawa dampak bagi kegiatan operasional perusahaan</strong>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/slider/WhatsApp_Image_2017-11-13_at_06_05_49.jpeg', 'WhatsApp_Image_2017-11-13_at_06_05_49.jpeg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES (14, 4, 'SUCOFINDO | <small>Assure Your Confidence</small>', '- Kalibrasi Alat Ukur dan Alat Uji <br> - Uji Tanpa Rusak <br> - Inspeksi dan Audit atas Menara Pengeboran (Rig) <br> - Inspeksi OCTG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/slider/WhatsApp_Image_2017-11-13_at_06_05_53.jpeg', 'WhatsApp_Image_2017-11-13_at_06_05_53.jpeg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES (13, 4, 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>Inspeksi dapat dilakukan dengan berbagai cara sesuai dengan </strong><br><strong>kebutuhan dan diutamakan dengan pengujian tanpa rusak sehingga </strong><br><strong>tidak membawa dampak bagi kegiatan operasional perusahaan</strong>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/slider/WhatsApp_Image_2017-11-13_at_06_05_54.jpeg', 'WhatsApp_Image_2017-11-13_at_06_05_54.jpeg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES (12, 4, 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>PT. Sucofindo (Persero) | SUCOFINDO melakukan verifikasi, </strong><br><strong>review, pemeriksaan dan evaluasi terhadap fasilitas produksi </strong><br><strong>migas hulu,seperti pada fasilitas ekstrasi, mulai tahap disain,</strong><br><strong> pabrikasi, instalasi, operasional sampai dengan pemeliharaannya </strong><br><strong>untuk memastikan peralatan dan fasilitas bekerja sesuai dengan </strong><br><strong>spesifikasi dan aman untuk dioperasikan</strong>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/slider/WhatsApp_Image_2017-11-13_at_06_05_55.jpeg', 'WhatsApp_Image_2017-11-13_at_06_05_55.jpeg', 'Y');

-- ----------------------------
-- Table structure for WEBSITE_TAG
-- ----------------------------
DROP TABLE IF EXISTS "public"."WEBSITE_TAG";
CREATE TABLE "public"."WEBSITE_TAG" (
  "TAG_ID" int4 NOT NULL DEFAULT nextval('"WEBSITE_TAG_ID_seq"'::regclass),
  "TAG_NAME" text COLLATE "pg_catalog"."default",
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of WEBSITE_TAG
-- ----------------------------
INSERT INTO "public"."WEBSITE_TAG" VALUES (2, 'Politik', 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."WEBSITE_TAG" VALUES (3, 'Info', 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."WEBSITE_TAG" VALUES (4, 'News', 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."WEBSITE_TAG" VALUES (5, 'Bencana', 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."WEBSITE_TAG" VALUES (6, 'Pemilu', 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for WEBSITE_TAG_ARTICLE
-- ----------------------------
DROP TABLE IF EXISTS "public"."WEBSITE_TAG_ARTICLE";
CREATE TABLE "public"."WEBSITE_TAG_ARTICLE" (
  "TAG_ARTICLE_ID" int4 NOT NULL DEFAULT nextval('"WEBSITE_TAG_ARTICLE_ID_seq"'::regclass),
  "ARTICLE_ID" int4,
  "TAG_ID" int4,
  "IS_DELETE" int4,
  "CREATE_TIME" timestamp(6),
  "CREATE_USER" text COLLATE "pg_catalog"."default",
  "MODIFY_TIME" timestamp(6),
  "MODIFY_USER" text COLLATE "pg_catalog"."default",
  "DELETE_TIME" timestamp(6),
  "DELETE_USER" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of WEBSITE_TAG_ARTICLE
-- ----------------------------
INSERT INTO "public"."WEBSITE_TAG_ARTICLE" VALUES (4, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."WEBSITE_TAG_ARTICLE" VALUES (5, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."WEBSITE_TAG_ARTICLE" VALUES (11, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for daemons
-- ----------------------------
DROP TABLE IF EXISTS "public"."daemons";
CREATE TABLE "public"."daemons" (
  "Start" text COLLATE "pg_catalog"."default" NOT NULL,
  "Info" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for gammu
-- ----------------------------
DROP TABLE IF EXISTS "public"."gammu";
CREATE TABLE "public"."gammu" (
  "Version" int2 NOT NULL DEFAULT '0'::smallint
)
;

-- ----------------------------
-- Records of gammu
-- ----------------------------
INSERT INTO "public"."gammu" VALUES (15);

-- ----------------------------
-- Table structure for inbox
-- ----------------------------
DROP TABLE IF EXISTS "public"."inbox";
CREATE TABLE "public"."inbox" (
  "UpdatedInDB" timestamp(0) NOT NULL DEFAULT ('now'::text)::timestamp(0) without time zone,
  "ReceivingDateTime" timestamp(0) NOT NULL DEFAULT ('now'::text)::timestamp(0) without time zone,
  "Text" text COLLATE "pg_catalog"."default" NOT NULL,
  "SenderNumber" varchar(20) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "Coding" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'Default_No_Compression'::character varying,
  "UDH" text COLLATE "pg_catalog"."default" NOT NULL,
  "SMSCNumber" varchar(20) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "Class" int4 NOT NULL DEFAULT '-1'::integer,
  "TextDecoded" text COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::text,
  "ID" int4 NOT NULL DEFAULT nextval('"inbox_ID_seq"'::regclass),
  "RecipientID" text COLLATE "pg_catalog"."default" NOT NULL,
  "Processed" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Table structure for outbox
-- ----------------------------
DROP TABLE IF EXISTS "public"."outbox";
CREATE TABLE "public"."outbox" (
  "UpdatedInDB" timestamp(0) NOT NULL DEFAULT ('now'::text)::timestamp(0) without time zone,
  "InsertIntoDB" timestamp(0) NOT NULL DEFAULT ('now'::text)::timestamp(0) without time zone,
  "SendingDateTime" timestamp(6) NOT NULL DEFAULT ('now'::text)::timestamp(0) without time zone,
  "SendBefore" time(6) NOT NULL DEFAULT '23:59:59'::time without time zone,
  "SendAfter" time(6) NOT NULL DEFAULT '00:00:00'::time without time zone,
  "Text" text COLLATE "pg_catalog"."default",
  "DestinationNumber" varchar(20) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "Coding" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'Default_No_Compression'::character varying,
  "UDH" text COLLATE "pg_catalog"."default",
  "Class" int4 DEFAULT '-1'::integer,
  "TextDecoded" text COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::text,
  "ID" int4 NOT NULL DEFAULT nextval('"outbox_ID_seq"'::regclass),
  "MultiPart" bool NOT NULL DEFAULT false,
  "RelativeValidity" int4 DEFAULT '-1'::integer,
  "SenderID" varchar(255) COLLATE "pg_catalog"."default",
  "SendingTimeOut" timestamp(0) NOT NULL DEFAULT ('now'::text)::timestamp(0) without time zone,
  "DeliveryReport" varchar(10) COLLATE "pg_catalog"."default" DEFAULT 'default'::character varying,
  "CreatorID" text COLLATE "pg_catalog"."default" NOT NULL,
  "Retries" int4 DEFAULT 0,
  "Priority" int4 DEFAULT 0,
  "Status" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'Reserved'::character varying,
  "StatusCode" int4 NOT NULL DEFAULT '-1'::integer
)
;

-- ----------------------------
-- Records of outbox
-- ----------------------------
INSERT INTO "public"."outbox" VALUES ('2018-01-03 09:35:00', '2018-01-03 09:35:00', '2018-01-03 09:35:00', '23:59:59', '00:00:00', '00480045004C004C004F00200057004F0052004C0044', '089663159652', 'Default_No_Compression', '', -1, 'HELLO WORLD', 106, 'f', 255, '', '2018-01-03 09:35:00', 'default', 'Gammu 1.37.0', 0, 0, 'Reserved', -1);
INSERT INTO "public"."outbox" VALUES ('2018-01-03 09:35:44', '2018-01-03 09:33:48', '2018-01-03 09:33:48', '23:59:59', '00:00:00', '00480045004C004C004F00200057004F0052004C0044', '089663159652', 'Default_No_Compression', '', -1, 'HELLO WORLD', 104, 'f', 255, '', '2018-01-03 09:45:44', 'default', 'Gammu 1.37.0', 1, 0, 'Reserved', -1);
INSERT INTO "public"."outbox" VALUES ('2018-01-03 09:34:04', '2018-01-03 09:34:04', '2018-01-03 09:34:04', '23:59:59', '00:00:00', '00480045004C004C004F00200057004F0052004C0044', '089663159652', 'Default_No_Compression', '', -1, 'HELLO WORLD', 105, 'f', 255, '', '2018-01-03 09:34:04', 'default', 'Gammu 1.37.0', 0, 0, 'Reserved', -1);

-- ----------------------------
-- Table structure for outbox_multipart
-- ----------------------------
DROP TABLE IF EXISTS "public"."outbox_multipart";
CREATE TABLE "public"."outbox_multipart" (
  "Text" text COLLATE "pg_catalog"."default",
  "Coding" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'Default_No_Compression'::character varying,
  "UDH" text COLLATE "pg_catalog"."default",
  "Class" int4 DEFAULT '-1'::integer,
  "TextDecoded" text COLLATE "pg_catalog"."default",
  "ID" int4 NOT NULL DEFAULT nextval('"outbox_multipart_ID_seq"'::regclass),
  "SequencePosition" int4 NOT NULL DEFAULT 1
)
;

-- ----------------------------
-- Table structure for pbk
-- ----------------------------
DROP TABLE IF EXISTS "public"."pbk";
CREATE TABLE "public"."pbk" (
  "ID" int4 NOT NULL DEFAULT nextval('"pbk_ID_seq"'::regclass),
  "GroupID" int4 NOT NULL DEFAULT '-1'::integer,
  "Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Number" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for pbk_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."pbk_groups";
CREATE TABLE "public"."pbk_groups" (
  "Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "ID" int4 NOT NULL DEFAULT nextval('"pbk_groups_ID_seq"'::regclass)
)
;

-- ----------------------------
-- Table structure for phones
-- ----------------------------
DROP TABLE IF EXISTS "public"."phones";
CREATE TABLE "public"."phones" (
  "ID" text COLLATE "pg_catalog"."default" NOT NULL,
  "UpdatedInDB" timestamp(0) NOT NULL DEFAULT ('now'::text)::timestamp(0) without time zone,
  "InsertIntoDB" timestamp(0) NOT NULL DEFAULT ('now'::text)::timestamp(0) without time zone,
  "TimeOut" timestamp(0) NOT NULL DEFAULT ('now'::text)::timestamp(0) without time zone,
  "Send" bool NOT NULL DEFAULT false,
  "Receive" bool NOT NULL DEFAULT false,
  "IMEI" varchar(35) COLLATE "pg_catalog"."default" NOT NULL,
  "NetCode" varchar(10) COLLATE "pg_catalog"."default" DEFAULT 'ERROR'::character varying,
  "NetName" varchar(35) COLLATE "pg_catalog"."default" DEFAULT 'ERROR'::character varying,
  "Client" text COLLATE "pg_catalog"."default" NOT NULL,
  "Battery" int4 NOT NULL DEFAULT '-1'::integer,
  "Signal" int4 NOT NULL DEFAULT '-1'::integer,
  "Sent" int4 NOT NULL DEFAULT 0,
  "Received" int4 NOT NULL DEFAULT 0
)
;

-- ----------------------------
-- Records of phones
-- ----------------------------
INSERT INTO "public"."phones" VALUES ('', '2018-01-03 09:35:49', '2018-01-03 09:35:42', '2018-01-03 09:35:59', 't', 't', '012345678901234', '', '', 'Gammu 1.37.0, Linux, kernel 4.4.14-040414-generic (#201606241434 SMP Fri Jun 24 18:36:45 UTC 2016), GCC 5.3', 0, -1, 0, 0);

-- ----------------------------
-- Table structure for sentitems
-- ----------------------------
DROP TABLE IF EXISTS "public"."sentitems";
CREATE TABLE "public"."sentitems" (
  "UpdatedInDB" timestamp(0) NOT NULL DEFAULT ('now'::text)::timestamp(0) without time zone,
  "InsertIntoDB" timestamp(0) NOT NULL DEFAULT ('now'::text)::timestamp(0) without time zone,
  "SendingDateTime" timestamp(0) NOT NULL DEFAULT ('now'::text)::timestamp(0) without time zone,
  "DeliveryDateTime" timestamp(0),
  "Text" text COLLATE "pg_catalog"."default" NOT NULL,
  "DestinationNumber" varchar(20) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "Coding" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'Default_No_Compression'::character varying,
  "UDH" text COLLATE "pg_catalog"."default" NOT NULL,
  "SMSCNumber" varchar(20) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "Class" int4 NOT NULL DEFAULT '-1'::integer,
  "TextDecoded" text COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::text,
  "ID" int4 NOT NULL DEFAULT nextval('"sentitems_ID_seq"'::regclass),
  "SenderID" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "SequencePosition" int4 NOT NULL DEFAULT 1,
  "Status" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'SendingOK'::character varying,
  "StatusError" int4 NOT NULL DEFAULT '-1'::integer,
  "TPMR" int4 NOT NULL DEFAULT '-1'::integer,
  "RelativeValidity" int4 NOT NULL DEFAULT '-1'::integer,
  "CreatorID" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Function structure for update_timestamp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."update_timestamp"();
CREATE OR REPLACE FUNCTION "public"."update_timestamp"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
  BEGIN
    NEW."UpdatedInDB" := LOCALTIMESTAMP(0);
    RETURN NEW;
  END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."ALERT_SUBSCRIBER_ID_seq"', 10, true);
SELECT setval('"public"."APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq"', 60, true);
SELECT setval('"public"."APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq"', 13, true);
SELECT setval('"public"."APP_CLIENT_MENU_CLIENT_MENU_ID_seq"', 8, true);
SELECT setval('"public"."APP_CLIENT_SITE_ID_seq"', 6, true);
SELECT setval('"public"."APP_CLIENT_TEMPLATE_CLIENT_TEMPLATE_ID_seq"', 13, true);
SELECT setval('"public"."APP_CLIENT_TEMPLATE_COMPONENT_TEMPLATE_COMPONENT_ID_seq"', 51, true);
SELECT setval('"public"."APP_CLIENT_USER_CLIENT_USER_ID_seq"', 5, true);
SELECT setval('"public"."APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq"', 5, true);
ALTER SEQUENCE "public"."APP_FUNCTION_ACCESS_ID_seq"
OWNED BY "public"."APP_FUNCTION_ACCESS"."ID";
SELECT setval('"public"."APP_FUNCTION_ACCESS_ID_seq"', 1347, true);
SELECT setval('"public"."APP_LOG_CLIENT_LOG_CLIENT_ID_seq"', 5086, true);
SELECT setval('"public"."APP_LOG_LOG_ID_seq"', 27296, true);
SELECT setval('"public"."APP_MENU_MENU_ID_seq"', 156, true);
SELECT setval('"public"."APP_ROUTE_ROUTE_ID_seq"', 2, false);
SELECT setval('"public"."APP_SETTING_SETTING_ID_seq"', 10, true);
SELECT setval('"public"."APP_TEMPLATE_ACCESS_TEMPLATE_ACCESS_ID_seq"', 70, true);
SELECT setval('"public"."APP_USER_GROUP_GROUP_ID_seq"', 8, true);
SELECT setval('"public"."APP_USER_USER_ID_seq"', 10, true);
SELECT setval('"public"."CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq"', 10, true);
SELECT setval('"public"."FILE_MANAGER_ID_seq"', 13, true);
SELECT setval('"public"."FORM_ENTRY_FIELD_ID_seq"', 32, true);
SELECT setval('"public"."FORM_ENTRY_ID_seq"', 8, true);
SELECT setval('"public"."HEADER_INFO_CLIENT_ID_seq"', 6, true);
SELECT setval('"public"."KOMPONEN_HTML_ID_seq"', 23, true);
SELECT setval('"public"."KOMPONEN_JSON_ID_seq"', 6, true);
SELECT setval('"public"."MAP_POINT_ID_seq"', 14, true);
SELECT setval('"public"."MASTER_BARGE_BARGE_ID_seq"', 14, true);
SELECT setval('"public"."MASTER_BBM_BBM_ID_seq"', 3, true);
SELECT setval('"public"."MASTER_CABANG_CABANG_ID_seq"', 5, true);
SELECT setval('"public"."MASTER_CONTRACT_ID_seq"', 6, true);
SELECT setval('"public"."MASTER_CV_CERTIFICATE_ID_seq"', 16, true);
SELECT setval('"public"."MASTER_CV_EDUCATION_ID_seq"', 103, true);
SELECT setval('"public"."MASTER_CV_EXPERIENCE_ID_seq"', 82, true);
SELECT setval('"public"."MASTER_CV_HISTORY_OF_WORK_ID_seq"', 71, true);
SELECT setval('"public"."MASTER_CV_ID_seq"', 3, true);
SELECT setval('"public"."MASTER_CV_REGION_ID_seq"', 81, false);
SELECT setval('"public"."MASTER_ICON_MARKER_ID_seq"', 9, true);
SELECT setval('"public"."MASTER_INTERVENTION_ID_seq"', 26, true);
SELECT setval('"public"."MASTER_LOCATION_ID_seq"', 6, true);
SELECT setval('"public"."MASTER_PERSONIL_ID_seq"', 4, true);
SELECT setval('"public"."MASTER_PORT_PORT_ID_seq"', 12, true);
SELECT setval('"public"."MASTER_PRODUCT_ID_seq"', 15, true);
SELECT setval('"public"."MASTER_STDREF_ID_seq"', 6, true);
SELECT setval('"public"."MASTER_STD_REF_ID_seq"', 2, false);
SELECT setval('"public"."MASTER_TOOL_ID_seq"', 2, true);
SELECT setval('"public"."MASTER_VESSEL_VESSEL_ID_seq"', 28, true);
SELECT setval('"public"."REF_EXP_ID_seq"', 6, true);
SELECT setval('"public"."REF_POSITION_ID_seq"', 7, true);
SELECT setval('"public"."REF_REGION_ID_seq"', 33, true);
SELECT setval('"public"."RUNNING_TEXT_RUNNING_TEXT_ID_seq"', 88, true);
SELECT setval('"public"."WA_ID_seq"', 8, true);
SELECT setval('"public"."WEBSITE_ARTICLE_CATEGORY_ID_seq"', 4, true);
SELECT setval('"public"."WEBSITE_ARTICLE_ID_seq"', 4, true);
SELECT setval('"public"."WEBSITE_MENU_MENU_ID_seq"', 23, true);
SELECT setval('"public"."WEBSITE_PAGE_STATIC_ID_seq"', 18, true);
SELECT setval('"public"."WEBSITE_SLIDER_DETAIL_ID_seq"', 19, true);
SELECT setval('"public"."WEBSITE_SLIDER_ID_seq"', 5, true);
SELECT setval('"public"."WEBSITE_TAG_ARTICLE_ID_seq"', 12, true);
SELECT setval('"public"."WEBSITE_TAG_ID_seq"', 9, true);
ALTER SEQUENCE "public"."inbox_ID_seq"
OWNED BY "public"."inbox"."ID";
SELECT setval('"public"."inbox_ID_seq"', 11, true);
ALTER SEQUENCE "public"."outbox_ID_seq"
OWNED BY "public"."outbox"."ID";
SELECT setval('"public"."outbox_ID_seq"', 107, true);
ALTER SEQUENCE "public"."outbox_multipart_ID_seq"
OWNED BY "public"."outbox_multipart"."ID";
SELECT setval('"public"."outbox_multipart_ID_seq"', 2, false);
ALTER SEQUENCE "public"."pbk_ID_seq"
OWNED BY "public"."pbk"."ID";
SELECT setval('"public"."pbk_ID_seq"', 2, false);
ALTER SEQUENCE "public"."pbk_groups_ID_seq"
OWNED BY "public"."pbk_groups"."ID";
SELECT setval('"public"."pbk_groups_ID_seq"', 2, false);
SELECT setval('"public"."pelni_info_id_info_seq"', 4, false);
ALTER SEQUENCE "public"."pelni_info_id_info_seq1"
OWNED BY "public"."INFO_CLIENT"."ID_INFO";
SELECT setval('"public"."pelni_info_id_info_seq1"', 82, true);
ALTER SEQUENCE "public"."sentitems_ID_seq"
OWNED BY "public"."sentitems"."ID";
SELECT setval('"public"."sentitems_ID_seq"', 2, false);

-- ----------------------------
-- Primary Key structure for table ALERT_SUBSCRIBER
-- ----------------------------
ALTER TABLE "public"."ALERT_SUBSCRIBER" ADD CONSTRAINT "SMS_ALERT_pkey" PRIMARY KEY ("ALERT_SUBSCRIBER_ID");

-- ----------------------------
-- Primary Key structure for table APP_CLIENT_ACCESS
-- ----------------------------
ALTER TABLE "public"."APP_CLIENT_ACCESS" ADD CONSTRAINT "APP_CLIENT_ACCESS_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table APP_CLIENT_FORM_UPLOAD_DETAIL
-- ----------------------------
ALTER TABLE "public"."APP_CLIENT_FORM_UPLOAD_DETAIL" ADD CONSTRAINT "CLIENT_FILE_UPLOAD_DETAIL_ID_pkey" PRIMARY KEY ("FILE_UPLOAD_DETAIL_ID");

-- ----------------------------
-- Primary Key structure for table APP_CLIENT_HEADER_ACCESS
-- ----------------------------
ALTER TABLE "public"."APP_CLIENT_HEADER_ACCESS" ADD CONSTRAINT "APP_HEADER_ACCESS_pkey" PRIMARY KEY ("HEADER_ACCESS_ID");

-- ----------------------------
-- Primary Key structure for table APP_CLIENT_MENU
-- ----------------------------
ALTER TABLE "public"."APP_CLIENT_MENU" ADD CONSTRAINT "APP_CLIENT_MENU_pkey" PRIMARY KEY ("MENU_ID");

-- ----------------------------
-- Primary Key structure for table APP_CLIENT_SITE
-- ----------------------------
ALTER TABLE "public"."APP_CLIENT_SITE" ADD CONSTRAINT "APP_CLIENT_SITE_pkey" PRIMARY KEY ("CLIENT_SITE_ID");

-- ----------------------------
-- Primary Key structure for table APP_CLIENT_USER
-- ----------------------------
ALTER TABLE "public"."APP_CLIENT_USER" ADD CONSTRAINT "APP_CLIENT_USER_pkey" PRIMARY KEY ("USER_ID");

-- ----------------------------
-- Primary Key structure for table APP_CLIENT_USER_GROUP
-- ----------------------------
ALTER TABLE "public"."APP_CLIENT_USER_GROUP" ADD CONSTRAINT "APP_CLIENT_USER_GROUP_pkey" PRIMARY KEY ("GROUP_ID");

-- ----------------------------
-- Primary Key structure for table APP_FILE_MANAGER
-- ----------------------------
ALTER TABLE "public"."APP_FILE_MANAGER" ADD CONSTRAINT "FILE_MANAGER_pkey" PRIMARY KEY ("FILE_MANAGER_ID");

-- ----------------------------
-- Primary Key structure for table APP_FUNCTION_ACCESS
-- ----------------------------
ALTER TABLE "public"."APP_FUNCTION_ACCESS" ADD CONSTRAINT "APP_FUNCTION_ACCESS_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table APP_LOG
-- ----------------------------
ALTER TABLE "public"."APP_LOG" ADD CONSTRAINT "APP_LOG_pkey" PRIMARY KEY ("LOG_ID");

-- ----------------------------
-- Primary Key structure for table APP_LOG_CLIENT
-- ----------------------------
ALTER TABLE "public"."APP_LOG_CLIENT" ADD CONSTRAINT "APP_LOG_CLIENT_pkey" PRIMARY KEY ("LOG_ID");

-- ----------------------------
-- Primary Key structure for table APP_MENU
-- ----------------------------
ALTER TABLE "public"."APP_MENU" ADD CONSTRAINT "APP_MENU_pkey" PRIMARY KEY ("MENU_ID");

-- ----------------------------
-- Primary Key structure for table APP_ROUTE
-- ----------------------------
ALTER TABLE "public"."APP_ROUTE" ADD CONSTRAINT "APP_ROUTE_pkey" PRIMARY KEY ("ROUTE_ID");

-- ----------------------------
-- Primary Key structure for table APP_SETTING
-- ----------------------------
ALTER TABLE "public"."APP_SETTING" ADD CONSTRAINT "APP_SETTING_pkey" PRIMARY KEY ("SETTING_ID");

-- ----------------------------
-- Primary Key structure for table APP_USER
-- ----------------------------
ALTER TABLE "public"."APP_USER" ADD CONSTRAINT "APP_USER_pkey" PRIMARY KEY ("USER_ID");

-- ----------------------------
-- Primary Key structure for table APP_USER_GROUP
-- ----------------------------
ALTER TABLE "public"."APP_USER_GROUP" ADD CONSTRAINT "APP_USER_GROUP_pkey" PRIMARY KEY ("GROUP_ID");

-- ----------------------------
-- Primary Key structure for table FORM_ENTRY_FIELD
-- ----------------------------
ALTER TABLE "public"."FORM_ENTRY_FIELD" ADD CONSTRAINT "FORM_ENTRY_FIELD_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table HEADER_INFO_CLIENT
-- ----------------------------
ALTER TABLE "public"."HEADER_INFO_CLIENT" ADD CONSTRAINT "HEADER_INFO_CLIENT_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table INFO_CLIENT
-- ----------------------------
ALTER TABLE "public"."INFO_CLIENT" ADD CONSTRAINT "pelni_info_pkey" PRIMARY KEY ("ID_INFO");

-- ----------------------------
-- Primary Key structure for table KOMPONEN_HTML
-- ----------------------------
ALTER TABLE "public"."KOMPONEN_HTML" ADD CONSTRAINT "KOMPONEN_HTML_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table KOMPONEN_JSON
-- ----------------------------
ALTER TABLE "public"."KOMPONEN_JSON" ADD CONSTRAINT "KOMPONEN_JSON_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table MAP_POINT
-- ----------------------------
ALTER TABLE "public"."MAP_POINT" ADD CONSTRAINT "MAP_POINT_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table MASTER_BARGE
-- ----------------------------
ALTER TABLE "public"."MASTER_BARGE" ADD CONSTRAINT "MASTER_BARGE_pkey" PRIMARY KEY ("BARGE_ID");

-- ----------------------------
-- Primary Key structure for table MASTER_BBM
-- ----------------------------
ALTER TABLE "public"."MASTER_BBM" ADD CONSTRAINT "MASTER_BBM_pkey" PRIMARY KEY ("BBM_ID");

-- ----------------------------
-- Primary Key structure for table MASTER_CABANG
-- ----------------------------
ALTER TABLE "public"."MASTER_CABANG" ADD CONSTRAINT "MASTER_CABANG_pkey" PRIMARY KEY ("CABANG_ID");

-- ----------------------------
-- Primary Key structure for table MASTER_CONTRACT
-- ----------------------------
ALTER TABLE "public"."MASTER_CONTRACT" ADD CONSTRAINT "MASTER_CONTRACT_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table MASTER_CV
-- ----------------------------
ALTER TABLE "public"."MASTER_CV" ADD CONSTRAINT "MASTER_CV_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table MASTER_CV_CERTIFICATE
-- ----------------------------
ALTER TABLE "public"."MASTER_CV_CERTIFICATE" ADD CONSTRAINT "MASTER_CV_CERTIFICATE_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table MASTER_CV_EDUCATION
-- ----------------------------
ALTER TABLE "public"."MASTER_CV_EDUCATION" ADD CONSTRAINT "MASTER_CV_EDUCATION_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table MASTER_CV_EXPERIENCE
-- ----------------------------
ALTER TABLE "public"."MASTER_CV_EXPERIENCE" ADD CONSTRAINT "MASTER_CV_EXPERIENCE_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table MASTER_CV_REGION
-- ----------------------------
ALTER TABLE "public"."MASTER_CV_REGION" ADD CONSTRAINT "MASTER_CV_REGION_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table MASTER_ICON_MARKER
-- ----------------------------
ALTER TABLE "public"."MASTER_ICON_MARKER" ADD CONSTRAINT "MASTER_ICON_MARKER_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table MASTER_INTERVENTION
-- ----------------------------
ALTER TABLE "public"."MASTER_INTERVENTION" ADD CONSTRAINT "MASTER_INTERVENTION_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table MASTER_LOCATION
-- ----------------------------
ALTER TABLE "public"."MASTER_LOCATION" ADD CONSTRAINT "MASTER_LOCATION_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table MASTER_PERSONIL
-- ----------------------------
ALTER TABLE "public"."MASTER_PERSONIL" ADD CONSTRAINT "MASTER_PERSONIL_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table MASTER_PORT
-- ----------------------------
ALTER TABLE "public"."MASTER_PORT" ADD CONSTRAINT "MASTER_PORT_pkey" PRIMARY KEY ("PORT_ID");

-- ----------------------------
-- Primary Key structure for table MASTER_PRODUCT
-- ----------------------------
ALTER TABLE "public"."MASTER_PRODUCT" ADD CONSTRAINT "MASTER_PRODUCT_pkey" PRIMARY KEY ("PRODUCT_ID");

-- ----------------------------
-- Primary Key structure for table MASTER_STDREF
-- ----------------------------
ALTER TABLE "public"."MASTER_STDREF" ADD CONSTRAINT "MASTER_STDREF_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table MASTER_TOOL
-- ----------------------------
ALTER TABLE "public"."MASTER_TOOL" ADD CONSTRAINT "MASTER_TOOL_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table MASTER_VESSEL
-- ----------------------------
ALTER TABLE "public"."MASTER_VESSEL" ADD CONSTRAINT "MASTER_VESSEL_pkey" PRIMARY KEY ("VESSEL_ID");

-- ----------------------------
-- Primary Key structure for table REF_EDUCATION
-- ----------------------------
ALTER TABLE "public"."REF_EDUCATION" ADD CONSTRAINT "REF_EDUCATION_pkey" PRIMARY KEY ("ID_REF_EDUCATION");

-- ----------------------------
-- Primary Key structure for table REF_EXP
-- ----------------------------
ALTER TABLE "public"."REF_EXP" ADD CONSTRAINT "REF_EXP_pkey" PRIMARY KEY ("ID_REF_EXP");

-- ----------------------------
-- Primary Key structure for table REF_POSITION
-- ----------------------------
ALTER TABLE "public"."REF_POSITION" ADD CONSTRAINT "REF_POSITION_pkey" PRIMARY KEY ("ID_REF_POSITION");

-- ----------------------------
-- Primary Key structure for table RUNNING_TEXT
-- ----------------------------
ALTER TABLE "public"."RUNNING_TEXT" ADD CONSTRAINT "RUNNING_TEXT_pkey" PRIMARY KEY ("RUNNING_TEXT_ID");

-- ----------------------------
-- Primary Key structure for table WA
-- ----------------------------
ALTER TABLE "public"."WA" ADD CONSTRAINT "WA_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table WEBSITE_ARTICLE
-- ----------------------------
ALTER TABLE "public"."WEBSITE_ARTICLE" ADD CONSTRAINT "WEBSITE_ARTICLE_pkey" PRIMARY KEY ("ARTICLE_CATEGORY_ID");

-- ----------------------------
-- Primary Key structure for table WEBSITE_ARTICLE_CATEGORY
-- ----------------------------
ALTER TABLE "public"."WEBSITE_ARTICLE_CATEGORY" ADD CONSTRAINT "WEBSITE_ARTICLE_CATEGORY_pkey" PRIMARY KEY ("ARTICLE_CATEGORY_ID");

-- ----------------------------
-- Primary Key structure for table WEBSITE_MENU
-- ----------------------------
ALTER TABLE "public"."WEBSITE_MENU" ADD CONSTRAINT "WEBSITE_MENU_pkey" PRIMARY KEY ("MENU_ID");

-- ----------------------------
-- Primary Key structure for table WEBSITE_PAGE_STATIC
-- ----------------------------
ALTER TABLE "public"."WEBSITE_PAGE_STATIC" ADD CONSTRAINT "WEBSITE_PAGE_STATIC_pkey" PRIMARY KEY ("PAGE_STATIC_ID");

-- ----------------------------
-- Primary Key structure for table WEBSITE_SLIDER
-- ----------------------------
ALTER TABLE "public"."WEBSITE_SLIDER" ADD CONSTRAINT "WEBSITE_SLIDER_pkey" PRIMARY KEY ("SLIDER_ID");

-- ----------------------------
-- Primary Key structure for table WEBSITE_SLIDER_DETAIL
-- ----------------------------
ALTER TABLE "public"."WEBSITE_SLIDER_DETAIL" ADD CONSTRAINT "WEBSITE_SLIDER_DETAIL_ID_pkey" PRIMARY KEY ("SLIDER_DETAIL_ID");

-- ----------------------------
-- Primary Key structure for table WEBSITE_TAG
-- ----------------------------
ALTER TABLE "public"."WEBSITE_TAG" ADD CONSTRAINT "WEBSITE_TAG_pkey" PRIMARY KEY ("TAG_ID");

-- ----------------------------
-- Primary Key structure for table WEBSITE_TAG_ARTICLE
-- ----------------------------
ALTER TABLE "public"."WEBSITE_TAG_ARTICLE" ADD CONSTRAINT "WEBSITE_TAG_ARTICLE_pkey" PRIMARY KEY ("TAG_ARTICLE_ID");

-- ----------------------------
-- Triggers structure for table inbox
-- ----------------------------
CREATE TRIGGER "update_timestamp" BEFORE UPDATE ON "public"."inbox"
FOR EACH ROW
EXECUTE PROCEDURE "public"."update_timestamp"();

-- ----------------------------
-- Checks structure for table inbox
-- ----------------------------
ALTER TABLE "public"."inbox" ADD CONSTRAINT "inbox_Coding_check" CHECK ((("Coding")::text = ANY (ARRAY[('Default_No_Compression'::character varying)::text, ('Unicode_No_Compression'::character varying)::text, ('8bit'::character varying)::text, ('Default_Compression'::character varying)::text, ('Unicode_Compression'::character varying)::text])));

-- ----------------------------
-- Primary Key structure for table inbox
-- ----------------------------
ALTER TABLE "public"."inbox" ADD CONSTRAINT "inbox_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table outbox
-- ----------------------------
CREATE INDEX "outbox_date" ON "public"."outbox" USING btree (
  "SendingDateTime" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "SendingTimeOut" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "outbox_sender" ON "public"."outbox" USING btree (
  "SenderID" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Triggers structure for table outbox
-- ----------------------------
CREATE TRIGGER "update_timestamp" BEFORE UPDATE ON "public"."outbox"
FOR EACH ROW
EXECUTE PROCEDURE "public"."update_timestamp"();

-- ----------------------------
-- Checks structure for table outbox
-- ----------------------------
ALTER TABLE "public"."outbox" ADD CONSTRAINT "outbox_Coding_check" CHECK ((("Coding")::text = ANY (ARRAY[('Default_No_Compression'::character varying)::text, ('Unicode_No_Compression'::character varying)::text, ('8bit'::character varying)::text, ('Default_Compression'::character varying)::text, ('Unicode_Compression'::character varying)::text])));
ALTER TABLE "public"."outbox" ADD CONSTRAINT "outbox_DeliveryReport_check" CHECK ((("DeliveryReport")::text = ANY (ARRAY[('default'::character varying)::text, ('yes'::character varying)::text, ('no'::character varying)::text])));
ALTER TABLE "public"."outbox" ADD CONSTRAINT "outbox_Status_check" CHECK ((("Status")::text = ANY (ARRAY[('SendingOK'::character varying)::text, ('SendingOKNoReport'::character varying)::text, ('SendingError'::character varying)::text, ('DeliveryOK'::character varying)::text, ('DeliveryFailed'::character varying)::text, ('DeliveryPending'::character varying)::text, ('DeliveryUnknown'::character varying)::text, ('Error'::character varying)::text, ('Reserved'::character varying)::text])));

-- ----------------------------
-- Primary Key structure for table outbox
-- ----------------------------
ALTER TABLE "public"."outbox" ADD CONSTRAINT "outbox_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table outbox_multipart
-- ----------------------------
ALTER TABLE "public"."outbox_multipart" ADD CONSTRAINT "outbox_multipart_Coding_check" CHECK ((("Coding")::text = ANY (ARRAY[('Default_No_Compression'::character varying)::text, ('Unicode_No_Compression'::character varying)::text, ('8bit'::character varying)::text, ('Default_Compression'::character varying)::text, ('Unicode_Compression'::character varying)::text])));

-- ----------------------------
-- Primary Key structure for table outbox_multipart
-- ----------------------------
ALTER TABLE "public"."outbox_multipart" ADD CONSTRAINT "outbox_multipart_pkey" PRIMARY KEY ("ID", "SequencePosition");

-- ----------------------------
-- Primary Key structure for table pbk
-- ----------------------------
ALTER TABLE "public"."pbk" ADD CONSTRAINT "pbk_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table pbk_groups
-- ----------------------------
ALTER TABLE "public"."pbk_groups" ADD CONSTRAINT "pbk_groups_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Triggers structure for table phones
-- ----------------------------
CREATE TRIGGER "update_timestamp" BEFORE UPDATE ON "public"."phones"
FOR EACH ROW
EXECUTE PROCEDURE "public"."update_timestamp"();

-- ----------------------------
-- Primary Key structure for table phones
-- ----------------------------
ALTER TABLE "public"."phones" ADD CONSTRAINT "phones_pkey" PRIMARY KEY ("IMEI");

-- ----------------------------
-- Indexes structure for table sentitems
-- ----------------------------
CREATE INDEX "sentitems_date" ON "public"."sentitems" USING btree (
  "DeliveryDateTime" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "sentitems_dest" ON "public"."sentitems" USING btree (
  "DestinationNumber" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "sentitems_sender" ON "public"."sentitems" USING btree (
  "SenderID" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "sentitems_tpmr" ON "public"."sentitems" USING btree (
  "TPMR" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Triggers structure for table sentitems
-- ----------------------------
CREATE TRIGGER "update_timestamp" BEFORE UPDATE ON "public"."sentitems"
FOR EACH ROW
EXECUTE PROCEDURE "public"."update_timestamp"();

-- ----------------------------
-- Checks structure for table sentitems
-- ----------------------------
ALTER TABLE "public"."sentitems" ADD CONSTRAINT "sentitems_Coding_check" CHECK ((("Coding")::text = ANY (ARRAY[('Default_No_Compression'::character varying)::text, ('Unicode_No_Compression'::character varying)::text, ('8bit'::character varying)::text, ('Default_Compression'::character varying)::text, ('Unicode_Compression'::character varying)::text])));
ALTER TABLE "public"."sentitems" ADD CONSTRAINT "sentitems_Status_check" CHECK ((("Status")::text = ANY (ARRAY[('SendingOK'::character varying)::text, ('SendingOKNoReport'::character varying)::text, ('SendingError'::character varying)::text, ('DeliveryOK'::character varying)::text, ('DeliveryFailed'::character varying)::text, ('DeliveryPending'::character varying)::text, ('DeliveryUnknown'::character varying)::text, ('Error'::character varying)::text])));

-- ----------------------------
-- Primary Key structure for table sentitems
-- ----------------------------
ALTER TABLE "public"."sentitems" ADD CONSTRAINT "sentitems_pkey" PRIMARY KEY ("ID", "SequencePosition");
