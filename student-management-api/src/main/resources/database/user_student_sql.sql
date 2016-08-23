/*
Navicat PGSQL Data Transfer

Source Server         : LocalDatabase
Source Server Version : 90303
Source Host           : localhost:5432
Source Database       : postgres
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90303
File Encoding         : 65001

Date: 2016-08-23 09:59:23
*/


-- ----------------------------
-- Sequence structure for student_id_seq
-- ----------------------------
DROP SEQUENCE "student_id_seq";
CREATE SEQUENCE "student_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 20
 CACHE 1;
SELECT setval('"public"."student_id_seq"', 20, true);

-- ----------------------------
-- Sequence structure for tbrole_id_seq
-- ----------------------------
DROP SEQUENCE "tbrole_id_seq";
CREATE SEQUENCE "tbrole_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"public"."tbrole_id_seq"', 3, true);

-- ----------------------------
-- Sequence structure for tbuser1_id_seq
-- ----------------------------
DROP SEQUENCE "tbuser1_id_seq";
CREATE SEQUENCE "tbuser1_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"public"."tbuser1_id_seq"', 3, true);

-- ----------------------------
-- Table structure for tbrole
-- ----------------------------
DROP TABLE IF EXISTS "tbrole";
CREATE TABLE "tbrole" (
"id" int4 DEFAULT nextval('tbrole_id_seq'::regclass) NOT NULL,
"name" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tbrole
-- ----------------------------
BEGIN;
INSERT INTO "tbrole" VALUES ('1', 'ROLE_ADMIN');
INSERT INTO "tbrole" VALUES ('2', 'ROLE_EDITOR');
INSERT INTO "tbrole" VALUES ('3', 'ROLE_VISITOR');
COMMIT;

-- ----------------------------
-- Table structure for tbstudent
-- ----------------------------
DROP TABLE IF EXISTS "tbstudent";
CREATE TABLE "tbstudent" (
"id" int4 DEFAULT nextval('sep'::regclass) NOT NULL,
"name" varchar COLLATE "default",
"gender" varchar COLLATE "default",
"score" int4,
"image" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tbstudent
-- ----------------------------
BEGIN;
INSERT INTO "tbstudent" VALUES ('0', 'string', 'string', '0', null);
INSERT INTO "tbstudent" VALUES ('1', 'Chan Dana', 'Female', '50', '1.png');
INSERT INTO "tbstudent" VALUES ('3', 'Po Dara', 'Male', '70', '1.png');
INSERT INTO "tbstudent" VALUES ('4', 'Aing Teckchun', 'Female', '80', '3.png');
INSERT INTO "tbstudent" VALUES ('5', 'Yin Kokpheng', 'Male', '90', '2.png');
INSERT INTO "tbstudent" VALUES ('6', 'Srun Sundy', 'Male', '60', '1.png');
INSERT INTO "tbstudent" VALUES ('7', 'Srun Sundy', 'Male', '60', '1.png');
INSERT INTO "tbstudent" VALUES ('8', 'Srun Sundy', 'Male', '60', '1.png');
INSERT INTO "tbstudent" VALUES ('9', 'Srun Sundy', 'Male', '60', '2.png');
INSERT INTO "tbstudent" VALUES ('10', 'Test', 'Female', '100', '3.png');
INSERT INTO "tbstudent" VALUES ('11', 'test', 'Male', '80', '1.png');
INSERT INTO "tbstudent" VALUES ('12', 'test', 'Male', '80', '1.png');
INSERT INTO "tbstudent" VALUES ('13', 'test', 'Male', '80', '2.png');
INSERT INTO "tbstudent" VALUES ('14', 'test', 'Male', '80', '3.png');
INSERT INTO "tbstudent" VALUES ('26', 'test', 'Male', '80', '1.png');
INSERT INTO "tbstudent" VALUES ('27', 'test', 'Male', '80', '1.png');
INSERT INTO "tbstudent" VALUES ('28', 'test', 'Male', '45', '5.png');
INSERT INTO "tbstudent" VALUES ('29', 'test', 'Male', '45', '5.png');
INSERT INTO "tbstudent" VALUES ('51', 'test', 'Male', '80', '1.png');
INSERT INTO "tbstudent" VALUES ('52', 'test', 'Male', '80', '1.png');
INSERT INTO "tbstudent" VALUES ('53', 'test', 'Male', '80', '2.png');
INSERT INTO "tbstudent" VALUES ('54', 'test', 'Male', '80', '3.png');
INSERT INTO "tbstudent" VALUES ('55', 'test', 'Male', '80', '5.png');
INSERT INTO "tbstudent" VALUES ('56', 'test', 'Male', '80', '5.png');
INSERT INTO "tbstudent" VALUES ('57', 'test', 'Male', '80', '5.png');
INSERT INTO "tbstudent" VALUES ('58', 'test', 'Male', '80', '5.png');
INSERT INTO "tbstudent" VALUES ('59', 'test', 'Male', '80', '5.png');
INSERT INTO "tbstudent" VALUES ('60', 'test', 'Male', '80', '5.png');
INSERT INTO "tbstudent" VALUES ('61', 'test', 'Male', '80', '5.png');
INSERT INTO "tbstudent" VALUES ('62', '', '', '0', null);
INSERT INTO "tbstudent" VALUES ('100', 'phearun', 'male', '300', null);
INSERT INTO "tbstudent" VALUES ('111', 'GG', 'Male', '111', null);
INSERT INTO "tbstudent" VALUES ('232', 'string', 'string', '0', null);
INSERT INTO "tbstudent" VALUES ('323', 'string', 'string', '0', null);
COMMIT;

-- ----------------------------
-- Table structure for tbuser
-- ----------------------------
DROP TABLE IF EXISTS "tbuser";
CREATE TABLE "tbuser" (
"id" int4 DEFAULT nextval('tbuser1_id_seq'::regclass) NOT NULL,
"username" varchar COLLATE "default",
"email" varchar COLLATE "default",
"password" varchar COLLATE "default",
"status" bool DEFAULT true
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tbuser
-- ----------------------------
BEGIN;
INSERT INTO "tbuser" VALUES ('1', 'phearun', 'phearun@gmail.com', '123', 't');
INSERT INTO "tbuser" VALUES ('2', 'dara', 'dara@gmail.com', '123', 't');
INSERT INTO "tbuser" VALUES ('3', 'chenda', 'chenda@gmail.com', '123', 't');
COMMIT;

-- ----------------------------
-- Table structure for tbuser_detail
-- ----------------------------
DROP TABLE IF EXISTS "tbuser_detail";
CREATE TABLE "tbuser_detail" (
"user_id" int4 NOT NULL,
"role_id" int4 NOT NULL,
"create_date" date DEFAULT now()
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tbuser_detail
-- ----------------------------
BEGIN;
INSERT INTO "tbuser_detail" VALUES ('1', '1', '2016-08-20');
INSERT INTO "tbuser_detail" VALUES ('2', '1', '2016-08-20');
INSERT INTO "tbuser_detail" VALUES ('2', '2', '2016-08-20');
INSERT INTO "tbuser_detail" VALUES ('3', '3', '2016-08-20');
COMMIT;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "student_id_seq" OWNED BY "student"."id";
ALTER SEQUENCE "tbrole_id_seq" OWNED BY "tbrole"."id";
ALTER SEQUENCE "tbuser1_id_seq" OWNED BY "tbuser"."id";

-- ----------------------------
-- Primary Key structure for table tbrole
-- ----------------------------
ALTER TABLE "tbrole" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tbstudent
-- ----------------------------
ALTER TABLE "tbstudent" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tbuser
-- ----------------------------
ALTER TABLE "tbuser" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tbuser_detail
-- ----------------------------
ALTER TABLE "tbuser_detail" ADD PRIMARY KEY ("user_id", "role_id");

-- ----------------------------
-- Foreign Key structure for table "tbuser_detail"
-- ----------------------------
ALTER TABLE "tbuser_detail" ADD FOREIGN KEY ("user_id") REFERENCES "tbuser" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "tbuser_detail" ADD FOREIGN KEY ("role_id") REFERENCES "tbrole" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
