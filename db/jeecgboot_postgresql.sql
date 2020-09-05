/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : PostgreSQL
 Source Server Version : 120003
 Source Host           : localhost:5432
 Source Catalog        : postgres
 Source Schema         : base

 Target Server Type    : PostgreSQL
 Target Server Version : 120003
 File Encoding         : 65001

 Date: 26/05/2020 23:41:23
*/


-- ----------------------------
-- Table structure for demo
-- ----------------------------
DROP TABLE IF EXISTS "base"."demo";
CREATE TABLE "base"."demo" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(30) COLLATE "pg_catalog"."default",
  "key_word" varchar(255) COLLATE "pg_catalog"."default",
  "punch_time" timestamp(6),
  "salary_money" numeric(10,3),
  "bonus_money" float8,
  "sex" varchar(2) COLLATE "pg_catalog"."default",
  "age" int4,
  "birthday" date,
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "content" varchar(1000) COLLATE "pg_catalog"."default",
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "sys_org_code" varchar(64) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."demo"."id" IS '主键ID';
COMMENT ON COLUMN "base"."demo"."name" IS '姓名';
COMMENT ON COLUMN "base"."demo"."key_word" IS '关键词';
COMMENT ON COLUMN "base"."demo"."punch_time" IS '打卡时间';
COMMENT ON COLUMN "base"."demo"."salary_money" IS '工资';
COMMENT ON COLUMN "base"."demo"."bonus_money" IS '奖金';
COMMENT ON COLUMN "base"."demo"."sex" IS '性别 {男:1,女:2}';
COMMENT ON COLUMN "base"."demo"."age" IS '年龄';
COMMENT ON COLUMN "base"."demo"."birthday" IS '生日';
COMMENT ON COLUMN "base"."demo"."email" IS '邮箱';
COMMENT ON COLUMN "base"."demo"."content" IS '个人简介';
COMMENT ON COLUMN "base"."demo"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."demo"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."demo"."update_by" IS '修改人';
COMMENT ON COLUMN "base"."demo"."update_time" IS '修改时间';
COMMENT ON COLUMN "base"."demo"."sys_org_code" IS '所属部门编码';

-- ----------------------------
-- Records of demo
-- ----------------------------
INSERT INTO "base"."demo" VALUES ('1c2ba51b29a42d9de02bbd708ea8121a', '777777', '777', '2018-12-07 19:43:17', NULL, NULL, NULL, 7, '2018-12-07', NULL, NULL, NULL, NULL, 'admin', '2019-02-21 18:26:04', NULL);

-- ----------------------------
-- Table structure for demo_field_def_val_main
-- ----------------------------
DROP TABLE IF EXISTS "base"."demo_field_def_val_main";
CREATE TABLE "base"."demo_field_def_val_main" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(200) COLLATE "pg_catalog"."default",
  "name" varchar(200) COLLATE "pg_catalog"."default",
  "sex" varchar(200) COLLATE "pg_catalog"."default",
  "address" varchar(200) COLLATE "pg_catalog"."default",
  "address_param" varchar(32) COLLATE "pg_catalog"."default",
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "sys_org_code" varchar(64) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."demo_field_def_val_main"."code" IS '编码';
COMMENT ON COLUMN "base"."demo_field_def_val_main"."name" IS '姓名';
COMMENT ON COLUMN "base"."demo_field_def_val_main"."sex" IS '性别';
COMMENT ON COLUMN "base"."demo_field_def_val_main"."address" IS '地址';
COMMENT ON COLUMN "base"."demo_field_def_val_main"."address_param" IS '地址（传参）';
COMMENT ON COLUMN "base"."demo_field_def_val_main"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."demo_field_def_val_main"."create_time" IS '创建日期';
COMMENT ON COLUMN "base"."demo_field_def_val_main"."update_by" IS '更新人';
COMMENT ON COLUMN "base"."demo_field_def_val_main"."update_time" IS '更新日期';
COMMENT ON COLUMN "base"."demo_field_def_val_main"."sys_org_code" IS '所属部门';

-- ----------------------------
-- Records of demo_field_def_val_main
-- ----------------------------
INSERT INTO "base"."demo_field_def_val_main" VALUES ('1256548579457114114', 'q', 'q', '1', 'q', 'q', 'admin', '2020-05-02 19:38:21', 'admin', '2020-05-03 01:02:51', 'A01');

-- ----------------------------
-- Table structure for demo_field_def_val_sub
-- ----------------------------
DROP TABLE IF EXISTS "base"."demo_field_def_val_sub";
CREATE TABLE "base"."demo_field_def_val_sub" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(200) COLLATE "pg_catalog"."default",
  "name" varchar(200) COLLATE "pg_catalog"."default",
  "date" varchar(200) COLLATE "pg_catalog"."default",
  "main_id" varchar(200) COLLATE "pg_catalog"."default",
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "sys_org_code" varchar(64) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."demo_field_def_val_sub"."code" IS '编码';
COMMENT ON COLUMN "base"."demo_field_def_val_sub"."name" IS '名称';
COMMENT ON COLUMN "base"."demo_field_def_val_sub"."date" IS '日期';
COMMENT ON COLUMN "base"."demo_field_def_val_sub"."main_id" IS '主表ID';
COMMENT ON COLUMN "base"."demo_field_def_val_sub"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."demo_field_def_val_sub"."create_time" IS '创建日期';
COMMENT ON COLUMN "base"."demo_field_def_val_sub"."update_by" IS '更新人';
COMMENT ON COLUMN "base"."demo_field_def_val_sub"."update_time" IS '更新日期';
COMMENT ON COLUMN "base"."demo_field_def_val_sub"."sys_org_code" IS '所属部门';

-- ----------------------------
-- Records of demo_field_def_val_sub
-- ----------------------------
INSERT INTO "base"."demo_field_def_val_sub" VALUES ('15884194974080425602', '133', '管理员', '2020-05-02', '1256548579457114114', 'admin', '2020-05-03 01:02:51', NULL, NULL, 'A01');
INSERT INTO "base"."demo_field_def_val_sub" VALUES ('15884194979201535108', '1144', '管理员', '2020-05-02', '1256548579457114114', 'admin', '2020-05-03 01:02:51', NULL, NULL, 'A01');

-- ----------------------------
-- Table structure for jeecg_monthly_growth_analysis
-- ----------------------------
DROP TABLE IF EXISTS "base"."jeecg_monthly_growth_analysis";
CREATE TABLE "base"."jeecg_monthly_growth_analysis" (
  "id" int4 NOT NULL,
  "year" varchar(50) COLLATE "pg_catalog"."default",
  "month" varchar(50) COLLATE "pg_catalog"."default",
  "main_income" numeric(18,2),
  "other_income" numeric(18,2)
)
;
COMMENT ON COLUMN "base"."jeecg_monthly_growth_analysis"."month" IS '月份';
COMMENT ON COLUMN "base"."jeecg_monthly_growth_analysis"."main_income" IS '佣金/主营收入';
COMMENT ON COLUMN "base"."jeecg_monthly_growth_analysis"."other_income" IS '其他收入';

-- ----------------------------
-- Records of jeecg_monthly_growth_analysis
-- ----------------------------
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (1, '2018', '1月', 114758.90, 4426054.19);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (2, '2018', '2月', 8970734.12, 1230188.67);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (3, '2018', '3月', 26755421.23, 2048836.84);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (4, '2018', '4月', 2404990.63, 374171.44);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (5, '2018', '5月', 5450793.02, 502306.10);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (6, '2018', '6月', 17186212.11, 1375154.97);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (7, '2018', '7月', 579975.67, 461483.99);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (8, '2018', '8月', 1393590.06, 330403.76);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (9, '2018', '9月', 735761.21, 1647474.92);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (10, '2018', '10月', 1670442.44, 3423368.33);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (11, '2018', '11月', 2993130.34, 3552024.00);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (12, '2018', '12月', 4206227.26, 3645614.92);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (13, '2019', '1月', 483834.66, 418046.77);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (14, '2019', '2月', 11666578.65, 731352.20);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (15, '2019', '3月', 27080982.08, 1878538.81);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (16, '2019', '4月', 0.00, 0.00);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (17, '2019', '5月', 0.00, 0.00);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (18, '2019', '6月', 0.00, 0.00);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (19, '2019', '7月', 0.00, 0.00);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (20, '2019', '8月', 0.00, 0.00);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (21, '2019', '9月', 0.00, 0.00);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (22, '2019', '10月', 0.00, 0.00);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (23, '2019', '11月', 0.00, 0.00);
INSERT INTO "base"."jeecg_monthly_growth_analysis" VALUES (24, '2019', '12月', 0.00, 0.00);

-- ----------------------------
-- Table structure for jeecg_order_customer
-- ----------------------------
DROP TABLE IF EXISTS "base"."jeecg_order_customer";
CREATE TABLE "base"."jeecg_order_customer" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "sex" varchar(4) COLLATE "pg_catalog"."default",
  "idcard" varchar(18) COLLATE "pg_catalog"."default",
  "idcard_pic" varchar(500) COLLATE "pg_catalog"."default",
  "telphone" varchar(32) COLLATE "pg_catalog"."default",
  "order_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "base"."jeecg_order_customer"."id" IS '主键';
COMMENT ON COLUMN "base"."jeecg_order_customer"."name" IS '客户名';
COMMENT ON COLUMN "base"."jeecg_order_customer"."sex" IS '性别';
COMMENT ON COLUMN "base"."jeecg_order_customer"."idcard" IS '身份证号码';
COMMENT ON COLUMN "base"."jeecg_order_customer"."idcard_pic" IS '身份证扫描件';
COMMENT ON COLUMN "base"."jeecg_order_customer"."telphone" IS '电话1';
COMMENT ON COLUMN "base"."jeecg_order_customer"."order_id" IS '外键';
COMMENT ON COLUMN "base"."jeecg_order_customer"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."jeecg_order_customer"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."jeecg_order_customer"."update_by" IS '修改人';
COMMENT ON COLUMN "base"."jeecg_order_customer"."update_time" IS '修改时间';

-- ----------------------------
-- Records of jeecg_order_customer
-- ----------------------------
INSERT INTO "base"."jeecg_order_customer" VALUES ('1256527640480821249', 'scott', '2', NULL, NULL, NULL, 'b190737bd04cca8360e6f87c9ef9ec4e', 'admin', '2020-05-02 18:15:09', NULL, NULL);
INSERT INTO "base"."jeecg_order_customer" VALUES ('1256527640531152898', 'x秦风', '1', NULL, NULL, NULL, 'b190737bd04cca8360e6f87c9ef9ec4e', 'admin', '2020-05-02 18:15:09', NULL, NULL);

-- ----------------------------
-- Table structure for jeecg_order_main
-- ----------------------------
DROP TABLE IF EXISTS "base"."jeecg_order_main";
CREATE TABLE "base"."jeecg_order_main" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "order_code" varchar(50) COLLATE "pg_catalog"."default",
  "ctype" varchar(500) COLLATE "pg_catalog"."default",
  "order_date" timestamp(6),
  "order_money" float8,
  "content" varchar(500) COLLATE "pg_catalog"."default",
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "base"."jeecg_order_main"."id" IS '主键';
COMMENT ON COLUMN "base"."jeecg_order_main"."order_code" IS '订单号';
COMMENT ON COLUMN "base"."jeecg_order_main"."ctype" IS '订单类型';
COMMENT ON COLUMN "base"."jeecg_order_main"."order_date" IS '订单日期';
COMMENT ON COLUMN "base"."jeecg_order_main"."order_money" IS '订单金额';
COMMENT ON COLUMN "base"."jeecg_order_main"."content" IS '订单备注';
COMMENT ON COLUMN "base"."jeecg_order_main"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."jeecg_order_main"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."jeecg_order_main"."update_by" IS '修改人';
COMMENT ON COLUMN "base"."jeecg_order_main"."update_time" IS '修改时间';

-- ----------------------------
-- Records of jeecg_order_main
-- ----------------------------
INSERT INTO "base"."jeecg_order_main" VALUES ('163e2efcbc6d7d54eb3f8a137da8a75a', 'B100', NULL, NULL, 3000, NULL, 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO "base"."jeecg_order_main" VALUES ('3a867ebf2cebce9bae3f79676d8d86f3', '导入B100', '2222', NULL, 3000, NULL, 'jeecg-boot', '2019-03-29 18:43:59', 'admin', '2019-04-08 17:35:13');

-- ----------------------------
-- Table structure for jeecg_order_ticket
-- ----------------------------
DROP TABLE IF EXISTS "base"."jeecg_order_ticket";
CREATE TABLE "base"."jeecg_order_ticket" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "ticket_code" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "tickect_date" timestamp(6),
  "order_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "base"."jeecg_order_ticket"."id" IS '主键';
COMMENT ON COLUMN "base"."jeecg_order_ticket"."ticket_code" IS '航班号';
COMMENT ON COLUMN "base"."jeecg_order_ticket"."tickect_date" IS '航班时间';
COMMENT ON COLUMN "base"."jeecg_order_ticket"."order_id" IS '外键';
COMMENT ON COLUMN "base"."jeecg_order_ticket"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."jeecg_order_ticket"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."jeecg_order_ticket"."update_by" IS '修改人';
COMMENT ON COLUMN "base"."jeecg_order_ticket"."update_time" IS '修改时间';

-- ----------------------------
-- Records of jeecg_order_ticket
-- ----------------------------
INSERT INTO "base"."jeecg_order_ticket" VALUES ('0f0e3a40a215958f807eea08a6e1ac0a', '88', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO "base"."jeecg_order_ticket" VALUES ('0fa3bd0bbcf53650c0bb3c0cac6d8cb7', 'ffff', '2019-02-21 00:00:00', 'eb13ab35d2946a2b0cfe3452bca1e73f', 'admin', '2019-02-25 16:29:41', NULL, NULL);

-- ----------------------------
-- Table structure for jeecg_project_nature_income
-- ----------------------------
DROP TABLE IF EXISTS "base"."jeecg_project_nature_income";
CREATE TABLE "base"."jeecg_project_nature_income" (
  "id" int4 NOT NULL,
  "nature" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "insurance_fee" numeric(18,2),
  "risk_consulting_fee" numeric(18,2),
  "evaluation_fee" numeric(18,2),
  "insurance_evaluation_fee" numeric(18,2),
  "bidding_consulting_fee" numeric(18,2),
  "interol_consulting_fee" numeric(18,2)
)
;
COMMENT ON COLUMN "base"."jeecg_project_nature_income"."nature" IS '项目性质';
COMMENT ON COLUMN "base"."jeecg_project_nature_income"."insurance_fee" IS '保险经纪佣金费';
COMMENT ON COLUMN "base"."jeecg_project_nature_income"."risk_consulting_fee" IS '风险咨询费';
COMMENT ON COLUMN "base"."jeecg_project_nature_income"."evaluation_fee" IS '承保公估评估费';
COMMENT ON COLUMN "base"."jeecg_project_nature_income"."insurance_evaluation_fee" IS '保险公估费';
COMMENT ON COLUMN "base"."jeecg_project_nature_income"."bidding_consulting_fee" IS '投标咨询费';
COMMENT ON COLUMN "base"."jeecg_project_nature_income"."interol_consulting_fee" IS '内控咨询费';

-- ----------------------------
-- Records of jeecg_project_nature_income
-- ----------------------------
INSERT INTO "base"."jeecg_project_nature_income" VALUES (1, '市场化-电商业务', 4865.41, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO "base"."jeecg_project_nature_income" VALUES (2, '统筹型', 35767081.88, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO "base"."jeecg_project_nature_income" VALUES (3, '市场化-非股东', 1487045.35, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO "base"."jeecg_project_nature_income" VALUES (4, '市场化-参控股', 382690.56, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO "base"."jeecg_project_nature_income" VALUES (5, '市场化-员工福利', 256684.91, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO "base"."jeecg_project_nature_income" VALUES (6, '市场化-再保险', 563451.03, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO "base"."jeecg_project_nature_income" VALUES (7, '市场化-海外业务', 760576.25, 770458.75, 0.00, 0.00, 0.00, 0.00);
INSERT INTO "base"."jeecg_project_nature_income" VALUES (8, '市场化-风险咨询', 910183.93, 0.00, 0.00, 0.00, 0.00, 226415.09);

-- ----------------------------
-- Table structure for joa_demo
-- ----------------------------
DROP TABLE IF EXISTS "base"."joa_demo";
CREATE TABLE "base"."joa_demo" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "days" int4,
  "begin_date" timestamp(6),
  "end_date" timestamp(6),
  "reason" varchar(500) COLLATE "pg_catalog"."default",
  "bpm_status" varchar(50) COLLATE "pg_catalog"."default",
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."joa_demo"."id" IS 'ID';
COMMENT ON COLUMN "base"."joa_demo"."name" IS '请假人';
COMMENT ON COLUMN "base"."joa_demo"."days" IS '请假天数';
COMMENT ON COLUMN "base"."joa_demo"."begin_date" IS '开始时间';
COMMENT ON COLUMN "base"."joa_demo"."end_date" IS '请假结束时间';
COMMENT ON COLUMN "base"."joa_demo"."reason" IS '请假原因';
COMMENT ON COLUMN "base"."joa_demo"."bpm_status" IS '流程状态';
COMMENT ON COLUMN "base"."joa_demo"."create_by" IS '创建人id';
COMMENT ON COLUMN "base"."joa_demo"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."joa_demo"."update_time" IS '修改时间';
COMMENT ON COLUMN "base"."joa_demo"."update_by" IS '修改人id';
COMMENT ON TABLE "base"."joa_demo" IS '流程测试';

-- ----------------------------
-- Records of joa_demo
-- ----------------------------

-- ----------------------------
-- Table structure for onl_cgform_button
-- ----------------------------
DROP TABLE IF EXISTS "base"."onl_cgform_button";
CREATE TABLE "base"."onl_cgform_button" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "button_code" varchar(50) COLLATE "pg_catalog"."default",
  "button_icon" varchar(20) COLLATE "pg_catalog"."default",
  "button_name" varchar(50) COLLATE "pg_catalog"."default",
  "button_status" varchar(2) COLLATE "pg_catalog"."default",
  "button_style" varchar(20) COLLATE "pg_catalog"."default",
  "exp" varchar(255) COLLATE "pg_catalog"."default",
  "cgform_head_id" varchar(32) COLLATE "pg_catalog"."default",
  "opt_type" varchar(20) COLLATE "pg_catalog"."default",
  "order_num" int4,
  "opt_position" varchar(3) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."onl_cgform_button"."id" IS '主键ID';
COMMENT ON COLUMN "base"."onl_cgform_button"."button_code" IS '按钮编码';
COMMENT ON COLUMN "base"."onl_cgform_button"."button_icon" IS '按钮图标';
COMMENT ON COLUMN "base"."onl_cgform_button"."button_name" IS '按钮名称';
COMMENT ON COLUMN "base"."onl_cgform_button"."button_status" IS '按钮状态';
COMMENT ON COLUMN "base"."onl_cgform_button"."button_style" IS '按钮样式';
COMMENT ON COLUMN "base"."onl_cgform_button"."exp" IS '表达式';
COMMENT ON COLUMN "base"."onl_cgform_button"."cgform_head_id" IS '表单ID';
COMMENT ON COLUMN "base"."onl_cgform_button"."opt_type" IS '按钮类型';
COMMENT ON COLUMN "base"."onl_cgform_button"."order_num" IS '排序';
COMMENT ON COLUMN "base"."onl_cgform_button"."opt_position" IS '按钮位置1侧面 2底部';
COMMENT ON TABLE "base"."onl_cgform_button" IS 'Online表单自定义按钮';

-- ----------------------------
-- Records of onl_cgform_button
-- ----------------------------
INSERT INTO "base"."onl_cgform_button" VALUES ('a45bc1c6fba96be6b0c91ffcdd6b54aa', 'genereate_person_config', 'icon-edit', '生成配置', '1', 'link', NULL, 'e2faf977fdaf4b25a524f58c2441a51c', 'js', NULL, '2');
INSERT INTO "base"."onl_cgform_button" VALUES ('cc1d12de57a1a41d3986ed6d13e3ac11', '链接按钮测试', 'icon-edit', '自定义link', '1', 'link', NULL, 'd35109c3632c4952a19ecc094943dd71', 'js', NULL, '2');
INSERT INTO "base"."onl_cgform_button" VALUES ('ebcc48ef0bde4433a6faf940a5e170c1', 'button按钮测试', 'icon-edit', '自定义button', '1', 'button', NULL, 'd35109c3632c4952a19ecc094943dd71', 'js', NULL, '2');

-- ----------------------------
-- Table structure for onl_cgform_enhance_java
-- ----------------------------
DROP TABLE IF EXISTS "base"."onl_cgform_enhance_java";
CREATE TABLE "base"."onl_cgform_enhance_java" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "button_code" varchar(32) COLLATE "pg_catalog"."default",
  "cg_java_type" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "cg_java_value" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "cgform_head_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "active_status" varchar(2) COLLATE "pg_catalog"."default",
  "event" varchar(10) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "base"."onl_cgform_enhance_java"."button_code" IS '按钮编码';
COMMENT ON COLUMN "base"."onl_cgform_enhance_java"."cg_java_type" IS '类型';
COMMENT ON COLUMN "base"."onl_cgform_enhance_java"."cg_java_value" IS '数值';
COMMENT ON COLUMN "base"."onl_cgform_enhance_java"."cgform_head_id" IS '表单ID';
COMMENT ON COLUMN "base"."onl_cgform_enhance_java"."active_status" IS '生效状态';
COMMENT ON COLUMN "base"."onl_cgform_enhance_java"."event" IS '事件状态(end:结束，start:开始)';

-- ----------------------------
-- Records of onl_cgform_enhance_java
-- ----------------------------

-- ----------------------------
-- Table structure for onl_cgform_enhance_js
-- ----------------------------
DROP TABLE IF EXISTS "base"."onl_cgform_enhance_js";
CREATE TABLE "base"."onl_cgform_enhance_js" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "cg_js" text COLLATE "pg_catalog"."default",
  "cg_js_type" varchar(20) COLLATE "pg_catalog"."default",
  "content" varchar(1000) COLLATE "pg_catalog"."default",
  "cgform_head_id" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."onl_cgform_enhance_js"."id" IS '主键ID';
COMMENT ON COLUMN "base"."onl_cgform_enhance_js"."cg_js" IS 'JS增强内容';
COMMENT ON COLUMN "base"."onl_cgform_enhance_js"."cg_js_type" IS '类型';
COMMENT ON COLUMN "base"."onl_cgform_enhance_js"."content" IS '备注';
COMMENT ON COLUMN "base"."onl_cgform_enhance_js"."cgform_head_id" IS '表单ID';

-- ----------------------------
-- Records of onl_cgform_enhance_js
-- ----------------------------
INSERT INTO "base"."onl_cgform_enhance_js" VALUES ('274b5d741a0262d3411958f0c465c5f0', 'genereate_person_config(row){
console.log(''选择'',row)
alert(row.name + ''，个人积分配置生成成功！'');
}', 'list', NULL, 'e2faf977fdaf4b25a524f58c2441a51c');
INSERT INTO "base"."onl_cgform_enhance_js" VALUES ('2cbaf25f1edb620bea2d8de07f8233a1', 'air_china_post_materiel_item_onlChange(){
    return {
        wl_name(){
           
            let id = event.row.id
            let cnum = event.row.num
            let value = event.value
            let targrt = event.target
            let columnKey = event.column.key
           let nval = 200*cnum
           console.log(''row'',event.row);
           console.log(''cnum'',cnum);
           let otherValues = {''jifen'': nval}
              
                that.triggleChangeValues(targrt,id,otherValues)

        }
    }
}', 'form', NULL, 'e67d26b610dd414c884c4dbb24e71ce3');
INSERT INTO "base"."onl_cgform_enhance_js" VALUES ('35d4ef464e5e8c87c9aa82ea89215fc1', '', 'list', NULL, 'e67d26b610dd414c884c4dbb24e71ce3');
INSERT INTO "base"."onl_cgform_enhance_js" VALUES ('44cad4eec436328ed3cc134855f8d1d5', ' onlChange(){
   return {
    name(that, event) {
      that.executeMainFillRule()
    }
  }
 }', 'form', NULL, '4adec929a6594108bef5b35ee9966e9f');
INSERT INTO "base"."onl_cgform_enhance_js" VALUES ('90394fbc3d48978cc0937bc56f2d5370', '', 'list', NULL, 'deea5a8ec619460c9245ba85dbc59e80');
INSERT INTO "base"."onl_cgform_enhance_js" VALUES ('beec235f0b2d633ff3a6c395affdf59d', '', 'list', NULL, '4adec929a6594108bef5b35ee9966e9f');

-- ----------------------------
-- Table structure for onl_cgform_enhance_sql
-- ----------------------------
DROP TABLE IF EXISTS "base"."onl_cgform_enhance_sql";
CREATE TABLE "base"."onl_cgform_enhance_sql" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "button_code" varchar(50) COLLATE "pg_catalog"."default",
  "cgb_sql" text COLLATE "pg_catalog"."default",
  "cgb_sql_name" varchar(50) COLLATE "pg_catalog"."default",
  "content" varchar(1000) COLLATE "pg_catalog"."default",
  "cgform_head_id" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."onl_cgform_enhance_sql"."id" IS '主键ID';
COMMENT ON COLUMN "base"."onl_cgform_enhance_sql"."button_code" IS '按钮编码';
COMMENT ON COLUMN "base"."onl_cgform_enhance_sql"."cgb_sql" IS 'SQL内容';
COMMENT ON COLUMN "base"."onl_cgform_enhance_sql"."cgb_sql_name" IS 'Sql名称';
COMMENT ON COLUMN "base"."onl_cgform_enhance_sql"."content" IS '备注';
COMMENT ON COLUMN "base"."onl_cgform_enhance_sql"."cgform_head_id" IS '表单ID';

-- ----------------------------
-- Records of onl_cgform_enhance_sql
-- ----------------------------
INSERT INTO "base"."onl_cgform_enhance_sql" VALUES ('5ab418a13fd0bbf30ee9dd04203f3c28', 'add', '', NULL, '', '4adec929a6594108bef5b35ee9966e9f');

-- ----------------------------
-- Table structure for onl_cgform_field
-- ----------------------------
DROP TABLE IF EXISTS "base"."onl_cgform_field";
CREATE TABLE "base"."onl_cgform_field" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "cgform_head_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "db_field_name" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "db_field_txt" varchar(200) COLLATE "pg_catalog"."default",
  "db_field_name_old" varchar(32) COLLATE "pg_catalog"."default",
  "db_is_key" int2,
  "db_is_null" int2,
  "db_type" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "db_length" int4 NOT NULL,
  "db_point_length" int4,
  "db_default_val" varchar(20) COLLATE "pg_catalog"."default",
  "dict_field" varchar(100) COLLATE "pg_catalog"."default",
  "dict_table" varchar(255) COLLATE "pg_catalog"."default",
  "dict_text" varchar(100) COLLATE "pg_catalog"."default",
  "field_show_type" varchar(10) COLLATE "pg_catalog"."default",
  "field_href" varchar(200) COLLATE "pg_catalog"."default",
  "field_length" int4,
  "field_valid_type" varchar(300) COLLATE "pg_catalog"."default",
  "field_must_input" varchar(2) COLLATE "pg_catalog"."default",
  "field_extend_json" varchar(500) COLLATE "pg_catalog"."default",
  "field_default_value" varchar(100) COLLATE "pg_catalog"."default",
  "is_query" int2,
  "is_show_form" int2,
  "is_show_list" int2,
  "is_read_only" int2,
  "query_mode" varchar(10) COLLATE "pg_catalog"."default",
  "main_table" varchar(100) COLLATE "pg_catalog"."default",
  "main_field" varchar(100) COLLATE "pg_catalog"."default",
  "order_num" int4,
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "create_time" timestamp(6),
  "create_by" varchar(255) COLLATE "pg_catalog"."default",
  "converter" varchar(255) COLLATE "pg_catalog"."default",
  "query_def_val" varchar(50) COLLATE "pg_catalog"."default",
  "query_dict_text" varchar(100) COLLATE "pg_catalog"."default",
  "query_dict_field" varchar(100) COLLATE "pg_catalog"."default",
  "query_dict_table" varchar(500) COLLATE "pg_catalog"."default",
  "query_show_type" varchar(50) COLLATE "pg_catalog"."default",
  "query_config_flag" varchar(3) COLLATE "pg_catalog"."default",
  "query_valid_type" varchar(50) COLLATE "pg_catalog"."default",
  "query_must_input" varchar(3) COLLATE "pg_catalog"."default",
  "sort_flag" varchar(3) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."onl_cgform_field"."id" IS '主键ID';
COMMENT ON COLUMN "base"."onl_cgform_field"."cgform_head_id" IS '表ID';
COMMENT ON COLUMN "base"."onl_cgform_field"."db_field_name" IS '字段名字';
COMMENT ON COLUMN "base"."onl_cgform_field"."db_field_txt" IS '字段备注';
COMMENT ON COLUMN "base"."onl_cgform_field"."db_field_name_old" IS '原字段名';
COMMENT ON COLUMN "base"."onl_cgform_field"."db_is_key" IS '是否主键 0否 1是';
COMMENT ON COLUMN "base"."onl_cgform_field"."db_is_null" IS '是否允许为空0否 1是';
COMMENT ON COLUMN "base"."onl_cgform_field"."db_type" IS '数据库字段类型';
COMMENT ON COLUMN "base"."onl_cgform_field"."db_length" IS '数据库字段长度';
COMMENT ON COLUMN "base"."onl_cgform_field"."db_point_length" IS '小数点';
COMMENT ON COLUMN "base"."onl_cgform_field"."db_default_val" IS '表字段默认值';
COMMENT ON COLUMN "base"."onl_cgform_field"."dict_field" IS '字典code';
COMMENT ON COLUMN "base"."onl_cgform_field"."dict_table" IS '字典表';
COMMENT ON COLUMN "base"."onl_cgform_field"."dict_text" IS '字典Text';
COMMENT ON COLUMN "base"."onl_cgform_field"."field_show_type" IS '表单控件类型';
COMMENT ON COLUMN "base"."onl_cgform_field"."field_href" IS '跳转URL';
COMMENT ON COLUMN "base"."onl_cgform_field"."field_length" IS '表单控件长度';
COMMENT ON COLUMN "base"."onl_cgform_field"."field_valid_type" IS '表单字段校验规则';
COMMENT ON COLUMN "base"."onl_cgform_field"."field_must_input" IS '字段是否必填';
COMMENT ON COLUMN "base"."onl_cgform_field"."field_extend_json" IS '扩展参数JSON';
COMMENT ON COLUMN "base"."onl_cgform_field"."field_default_value" IS '控件默认值，不同的表达式展示不同的结果。
1. 纯字符串直接赋给默认值；
2. #{普通变量}；
3. {{ 动态JS表达式 }}；
4. ${填值规则编码}；
填值规则表达式只允许存在一个，且不能和其他规则混用。';
COMMENT ON COLUMN "base"."onl_cgform_field"."is_query" IS '是否查询条件0否 1是';
COMMENT ON COLUMN "base"."onl_cgform_field"."is_show_form" IS '表单是否显示0否 1是';
COMMENT ON COLUMN "base"."onl_cgform_field"."is_show_list" IS '列表是否显示0否 1是';
COMMENT ON COLUMN "base"."onl_cgform_field"."is_read_only" IS '是否是只读（1是 0否）';
COMMENT ON COLUMN "base"."onl_cgform_field"."query_mode" IS '查询模式';
COMMENT ON COLUMN "base"."onl_cgform_field"."main_table" IS '外键主表名';
COMMENT ON COLUMN "base"."onl_cgform_field"."main_field" IS '外键主键字段';
COMMENT ON COLUMN "base"."onl_cgform_field"."order_num" IS '排序';
COMMENT ON COLUMN "base"."onl_cgform_field"."update_by" IS '修改人';
COMMENT ON COLUMN "base"."onl_cgform_field"."update_time" IS '修改时间';
COMMENT ON COLUMN "base"."onl_cgform_field"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."onl_cgform_field"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."onl_cgform_field"."converter" IS '自定义值转换器';
COMMENT ON COLUMN "base"."onl_cgform_field"."query_def_val" IS '查询默认值';
COMMENT ON COLUMN "base"."onl_cgform_field"."query_dict_text" IS '查询配置字典text';
COMMENT ON COLUMN "base"."onl_cgform_field"."query_dict_field" IS '查询配置字典code';
COMMENT ON COLUMN "base"."onl_cgform_field"."query_dict_table" IS '查询配置字典table';
COMMENT ON COLUMN "base"."onl_cgform_field"."query_show_type" IS '查询显示控件';
COMMENT ON COLUMN "base"."onl_cgform_field"."query_config_flag" IS '是否启用查询配置1是0否';
COMMENT ON COLUMN "base"."onl_cgform_field"."query_valid_type" IS '查询字段校验类型';
COMMENT ON COLUMN "base"."onl_cgform_field"."query_must_input" IS '查询字段是否必填1是0否';
COMMENT ON COLUMN "base"."onl_cgform_field"."sort_flag" IS '是否支持排序1是0否';

-- ----------------------------
-- Records of onl_cgform_field
-- ----------------------------
INSERT INTO "base"."onl_cgform_field" VALUES ('0021c969dc23a9150d6f70a13b52e73e', '402860816aa5921f016aa5921f480000', 'begin_date', '开始时间', 'begin_date', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('020c1622c3df0aef30185f57874f6959', '79091e8277c744158530321513119c68', 'bpm_status', '流程状态', NULL, 0, 1, 'String', 32, 0, '1', 'bpm_status', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 1, 0, 'single', '', '', 8, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:29:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('02b20e692456403e2fed1a89a06833b4', '402860816bff91c0016bff91d2810005', 'phone', '联系方式', 'phone', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('03668009f0ad92b20abb1a377197ee47', 'deea5a8ec619460c9245ba85dbc59e80', 'order_fk_id', '订单外键ID', NULL, 0, 0, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', 'test_order_main', 'id', 10, 'admin', '2020-05-03 01:01:18', '2019-04-20 11:42:53', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('03709092184fdf4a66b0cdb4dd10a159', '402860816bff91c0016bffa220a9000b', 'bpm_status', '流程状态', NULL, 0, 1, 'String', 32, 0, '1', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 46, 'admin', '2019-07-22 16:15:32', '2019-07-19 15:34:44', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('03c105d2706c8286416833684de67406', '79091e8277c744158530321513119c68', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('03fd5ab69f331ff760c3f7d86b4a93f8', '4028318169e81b970169e81b97650000', 'log_content', '日志内容', 'log_content', 0, 1, 'string', 1000, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 3, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('045eb432c418b2b103b1e1b8e8a8a75d', 'fb7125a344a649b990c12949945cb6c1', 'age', '年龄', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', NULL, NULL, NULL, '2019-03-26 19:24:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('04e4185a503e6aaaa31c243829ff4ac7', 'd35109c3632c4952a19ecc094943dd71', 'birthday', '生日', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'date', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2020-02-24 17:29:16', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('04ff134cb4aae845059e10b3b85f1451', '7ea60a25fa27470e9080d6a921aabbd1', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-04-17 00:22:21', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('051dd70c504c97a028daab2af261ea35', '1acb6f81a1d9439da6cc4e868617b565', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('052dcc6f34976b66754fd99415bd22ce', '79091e8277c744158530321513119c68', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('054db05394e83b318f097a60bc044134', '402860816bff91c0016bffa220a9000b', 'residence_address', '户籍地址', 'residence_address', 0, 1, 'string', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 28, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('05dbdd8d9f0f84c8504faa6f24c7d4ac', '402880eb71d61d3d0171d61d3de30000', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 9, 'admin', '2020-05-03 00:54:16', '2020-05-02 23:59:33', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('0604945c206e867644e9a44b4c9b20c6', 'fb19fb067cd841f9ae93d4eb3b883dc0', '2', '4', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 5, NULL, NULL, '2019-03-23 11:39:48', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('0617de6d735b37a3f80f2f35ad5d1511', '4028839a6de2ebd3016de2ebd3870000', 'size_type', '尺码类型', 'size_type', 0, 1, 'string', 2, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 13, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('0619dfc3fbf9e193534bb3460a1a9d92', 'cb2d8534a2f544bc9c618dd49da66336', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'admin', '2020-02-24 17:22:42', '2020-02-24 15:15:13', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('06a1badae6119abf4ec48858a3e94e1c', '402860816bff91c0016bffa220a9000b', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 43, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('06f1cfff58395ff62526b894f6182641', 'e67d26b610dd414c884c4dbb24e71ce3', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:57', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('07a307972076a392ffc61b11437f89dd', '402860816bff91c0016bff91c0cb0000', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('07f4776fd641389a8c98a85713990dce', '402860816bff91c0016bff91c0cb0000', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 14, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('09450359eb90b40d224ec43588a62f9e', '402860816bff91c0016bff91c0cb0000', 'user_id', '用户ID', 'user_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('0a453a63e33654aa1b9ee2affa854a6d', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:01', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('0a4cdcb7e54f614ab952024f6c72bb6d', 'beee191324fd40c1afec4fda18bd9d47', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('0adc06d9b497684bcbb5a781e044517c', '1acb6f81a1d9439da6cc4e868617b565', 'supplier', '供应商', NULL, 0, 1, 'String', 32, 0, '', 'air_china_ supplier', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 15, 'admin', '2019-06-10 14:47:14', '2019-04-24 16:52:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('0b3e833ac4aae3a13ec2f8ae460708f8', '4028839a6de2ebd3016de2ebd3870000', 'no', '预算表序号', 'no', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 8, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('0ba1bf74e2a6a94a7a63010ec7230706', '402860816bff91c0016bffa220a9000b', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 42, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('0c34ebfe2e2a619d42db13f93d2a2d40', 'b81de38db24047b497d476516f8a0865', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2020-02-24 14:56:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('0cba94f0497d4d3d829fc573f58eff9f', '402860816bff91c0016bffa220a9000b', 'graduation_time', '毕业时间', 'graduation_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 16, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('0d00c51a4ddad2598a587fadc968a8b2', '402860816bff91c0016bff91cfea0004', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('0ddd0c0afc967a9ab6050401ca62a4be', 'e67d26b610dd414c884c4dbb24e71ce3', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:57', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('0fb6fa76c5c78a1e957dbb411e110738', '402860816bff91c0016bff91d8830007', 'politically_status', '政治面貌', 'politically_status', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('101a73df0aa5199ac05c4ce92a4f0e3e', '4adec929a6594108bef5b35ee9966e9f', 'name', '姓名', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '#{sysUserCode}', 0, 1, 1, 0, 'single', '', '', 3, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:58', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('105c8e44ad13026b641f0363601f30f3', 'e5464aa8fa7b47c580e91593cf9b46dc', 'num', '循环数量', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('10b78ee7954f230117689a226c44c0db', '402880e570a5d7000170a5d700f50000', 'descc', '描述', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', NULL, NULL, 11, NULL, NULL, '2020-03-04 21:58:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('1130f1e252533529bb1167b896dffe32', 'deea5a8ec619460c9245ba85dbc59e80', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2020-05-03 01:01:18', '2019-04-20 11:41:19', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('117fc4ba649d6690a3ac482ad5e4ad38', '56870166aba54ebfacb20ba6c770bd73', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2020-05-03 01:01:30', '2019-04-20 11:38:39', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('13246645b7650491b70205d99703ca06', '402860816aa5921f016aa5dedcb90009', 'bpm_status', '流程状态', 'bpm_status', 0, 1, 'string', 32, 0, '1', 'bpm_status', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 1, 0, 'group', '', '', 8, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('135dd0ee50712722db65b8762bd487ea', '8994f2817b5a45d9890aa04497a317c5', 'update_time', '更新日期', NULL, 0, 1, 'date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 4, NULL, NULL, '2019-03-23 11:39:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('14ec4c83c29966ab42b6b718c5a3e774', '7ea60a25fa27470e9080d6a921aabbd1', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-04-17 00:22:21', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('16363d0bc125125e395772278d0cf22e', '4b556f0168f64976a3d20bfb932bc798', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-04-12 23:38:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('16918ac159cb6313fec1dea7ac4bd0a0', '402880eb71d52dc30171d52dc3a10000', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 10, NULL, NULL, '2020-05-02 19:37:58', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('179c290e383009810fb738f07bd5af8d', '402860816bff91c0016bff91d2810005', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('17cbda69da9dd3632625a0647c259070', '73162c3b8161413e8ecdca7eb288d0c9', 'wl_name', '物料名字', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '1', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('18fefb2257901f05508f8ec13ada78a3', 'e5464aa8fa7b47c580e91593cf9b46dc', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-04-24 17:09:48', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('1973ef1d3728fbff2db6a352e001f5f7', 'fb7125a344a649b990c12949945cb6c1', 'name', '用户名', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 5, 'admin', '2019-03-26 19:24:11', '2019-03-26 19:01:52', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('1ab5be1f937f393b3e5cc214ef1b855c', '7ea60a25fa27470e9080d6a921aabbd1', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-04-17 00:22:21', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('1b6c7b95028bed9ff656d65557dd2bdf', '402860816bff91c0016bffa220a9000b', 'user_id', '用户id', 'user_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('1c2f307e315bac77a6d3f02e88387a43', 'deea5a8ec619460c9245ba85dbc59e80', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2020-05-03 01:01:18', '2019-04-20 11:41:19', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('1c3b2ad0a52ecb47fa7fd53f25875beb', 'deea5a8ec619460c9245ba85dbc59e80', 'price', '价格', NULL, 0, 1, 'double', 32, 0, '', '', '', '', 'text', '', 120, 'n', '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2020-05-03 01:01:18', '2019-04-20 11:41:19', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('1c4d25a12388c80d397bb4f4664fe4e6', '4b556f0168f64976a3d20bfb932bc798', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-04-12 23:38:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('1cfe967bb457cbaa6e041e45d019b583', '402860816bff91c0016bff91c7010001', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('1d95bdf1120c5a1776df022d0a571f21', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 7, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:01', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('1e3d8cfbf12155559666a23ee2c6c5ca', 'e5464aa8fa7b47c580e91593cf9b46dc', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('1ed46fdeb289bd7805c9b83332ccd3b4', '402860816bff91c0016bff91d2810005', 'relation', '关系', 'relation', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('1f0c6d33b79713fe79fb30373c81f6f7', '758334cb1e7445e2822b60e807aec4a3', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-10-18 18:02:09', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('1fa5f07b3e70d4925b69b2bf51309421', '56870166aba54ebfacb20ba6c770bd73', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2020-05-03 01:01:30', '2019-04-20 11:38:39', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('209ddb923d8dab9f454d56d82c0cc725', '3d447fa919b64f6883a834036c14aa67', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'admin', '2020-02-21 17:58:46', '2020-02-20 16:19:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('20ff34fb0466089cb633d73d5a6f08d6', 'd35109c3632c4952a19ecc094943dd71', 'update_time', '更新日期', NULL, 0, 1, 'date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2020-02-24 17:29:16', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('2113a4ec7b88b4820dcbbdf96e46bbb7', 'fbc35f067da94a70adb622ddba259352', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-07-03 19:44:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('2150e48b2cb6072d2d8ecd79a7daf7cc', '402860816bff91c0016bff91ca7e0002', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('2323239efb5a40b73034411868dfc41d', 'fb19fb067cd841f9ae93d4eb3b883dc0', 'update_by', '更新人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 3, NULL, NULL, '2019-03-23 11:39:48', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('23f42061ed218bdbc1262913c071e1cd', 'e5464aa8fa7b47c580e91593cf9b46dc', 'iz_valid', '启动状态', NULL, 0, 1, 'int', 2, 0, '', 'air_china_valid', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 12, 'admin', '2019-04-24 17:09:49', '2019-04-24 14:09:06', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('242cc59b23965a92161eca69ffdbf018', 'd35109c3632c4952a19ecc094943dd71', 'age', '年龄', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', 'http://www.baidu.com', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2020-02-24 17:29:16', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('265702edb8872e322fe72d3640e34ac5', '402860816bff91c0016bff91cfea0004', 'from_time', '开始日期', 'from_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('2739ab1ece4d6053ba931bb6572f4ed8', '4028839a6de2ebd3016de2ebd3870000', 'iz_valid', '启用状态', 'iz_valid', 0, 1, 'string', 2, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 9, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('281ce0b5343cd42b28825d7df16422f1', 'b81de38db24047b497d476516f8a0865', 'vv', 'vv', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, NULL, NULL, '2020-02-24 14:56:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('283f42283b9d0bf3b95ba3384ab2d255', '758334cb1e7445e2822b60e807aec4a3', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-10-18 18:02:09', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('284864d99fddfdcb00e188e3a512cb28', '1acb6f81a1d9439da6cc4e868617b565', 'no', '预算表序号', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 10, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('2889d3cef706f91e092d76a56b8055be', '402860816bff91c0016bff91cda80003', 'order_no', '序号', 'order_no', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('29e4abea55d9fa7dbbd0c8dbbb2b3756', '402860816bff91c0016bff91cda80003', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('2c9be627e7cab7f5a2ae9c7ca7ce94a2', 'cb2d8534a2f544bc9c618dd49da66336', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2020-02-24 17:22:42', '2020-02-24 15:15:14', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('2d53a66f0b72d820b86ff445e2181d76', 'beee191324fd40c1afec4fda18bd9d47', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('2dfc4c81926f678c5f8d5ffd27858201', 'e2faf977fdaf4b25a524f58c2441a51c', 'account', '用户编码', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('2e5275b6407e1b4265af8519077fa4a5', 'd3ae1c692b9640e0a091f8c46e17bb01', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, NULL, NULL, '2019-07-24 14:47:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('2e66b9db37648389e0846e2204111732', '73162c3b8161413e8ecdca7eb288d0c9', 'has_child', '是否有子节点', NULL, 0, 1, 'string', 3, 0, '', 'valid_status', '', '', 'list', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 10, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('2e6f741fa96a49a0adccc7b4682c1cef', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'name', '名称', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '#{sysUserName}', 0, 1, 1, 0, 'single', '', '', 3, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:01', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('2ee58d8e4844dfe1fa6b1b841ae0b312', '402860816bff91c0016bff91d2810005', 'politically_status', '政治面貌', 'politically_status', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('2f111722eb3a994450e67e3211fd69a8', '402860816bff91c0016bff91ca7e0002', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('30143cc3de69c413828f9fba20662026', '402860816bff91c0016bffa220a9000b', 'healthy', '健康状况', 'healthy', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('31193dc8ceacf979e4042e784ea8278a', '402880e570a5d7000170a5d700f50000', 'order_fk_id', '订单外键ID', NULL, 0, 0, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 10, NULL, NULL, '2020-03-04 21:58:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('31fd90306c3942f09cb79deabbf2f541', '402860816bff91c0016bff91d2810005', 'employee_id', '员工ID', 'employee_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', 'oa_employee_info', 'id', 2, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('336495117e3a31351fed6963b950dddb', '402860816bff91c0016bffa220a9000b', 'inside_transfer', '内部工作调动情况', 'inside_transfer', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 37, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('34138092d743d4232341a920efd2699e', '402880eb71d52dc30171d52dc3a10000', 'name', '名称', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '#{sysUserName}', 0, 1, 1, 0, 'single', NULL, NULL, 3, NULL, NULL, '2020-05-02 19:37:58', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('345c8b48e1e128e77c4c6e2b36512804', '402860816aa5921f016aa5dedcb90009', 'create_by', '创建人', 'create_by', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 2, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('34625a911b39e0596690c1a15f784448', '402880e570a5d7000170a5d700f50000', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 5, NULL, NULL, '2020-03-04 21:58:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('351faaeb2dd8105e9c66f678211c9d4f', 'dbf4675875e14676a3f9a8b2b8941140', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-05-27 18:02:07', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('354b2ce39c5e8ec3f0bbb01bf8ff0fb7', '32f75e4043ef4070919dbd4337186a3d', 'content', '描述', NULL, 0, 1, 'String', 300, 0, '', '', '', '', 'textarea', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-04-11 10:15:31', '2019-03-28 15:24:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('35ca1c8aa1501bc8a79c880928841f18', '402860816aa5921f016aa5921f480000', 'update_by', '修改人id', 'update_by', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 11, 'admin', '2019-05-11 15:31:55', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('3635793767371c6db9f76b4b79f9d321', '402860816bff91c0016bff91d8830007', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('370a6eebc2d732eaf121fe0830d853a6', 'e5464aa8fa7b47c580e91593cf9b46dc', 'wl_code', '物料编码', NULL, 0, 1, 'String', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 7, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('37462a4d78968d0e432d746423603b81', '3d447fa919b64f6883a834036c14aa67', 'province', '省份', NULL, 0, 1, 'String', 100, 0, '', '', '{table:''sys_category'',txt:''name'',key:''id'',linkField:''city,area'',idField:''id'',pidField:''pid'', condition:" pid = ''1230769196661510146'' "         }', '', 'link_down', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 2, 'admin', '2020-02-21 17:58:46', '2020-02-20 16:19:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('37e2548874f09ef7d08642a30bc918fa', 'fbc35f067da94a70adb622ddba259352', 'group_name', '小组名', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, NULL, NULL, '2019-07-03 19:44:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('391e7cbd9f29743b11bb555c50547b1f', '32f75e4043ef4070919dbd4337186a3d', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('396c36fa5320975851d06772d10ea7b1', 'cb2d8534a2f544bc9c618dd49da66336', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2020-02-24 17:22:42', '2020-02-24 15:15:14', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('3b439859f98e30e34d25e983eb22e408', '402860816bff91c0016bff91c7010001', 'award_time', '获奖时间', 'award_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('3bf44e68de518f3ddf72b87671d0ff90', '8994f2817b5a45d9890aa04497a317c5', 'update_by', '更新人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 3, NULL, NULL, '2019-03-23 11:39:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('3cd2061ea15ce9eeb4b7cf2e544ccb6b', 'd35109c3632c4952a19ecc094943dd71', 'file_kk', '附件', NULL, 0, 1, 'String', 500, 0, '', '', '', '', 'file', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 12, 'admin', '2020-02-24 17:29:16', '2019-06-10 20:06:57', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('3cfd4d60c7d8409ae716a579bcb0910d', '402860816bff91c0016bff91c0cb0000', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 16, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('3e32f6c30c9028872388f70743c5d6a5', '402860816bff91c0016bff91c0cb0000', 'reason', '申请理由', 'reason', 0, 1, 'string', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('3e70d1c516c3533c6698300665c669e1', '402860816bff91c0016bff91c0cb0000', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:31', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('3eff1d21b946e23d7f83de977962d9cf', '402880eb71d61d3d0171d61d3de30000', 'main_id', '主表ID', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2020-05-03 00:54:16', '2020-05-02 23:59:33', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('3f2ace8f968a0e5b91d1340ee2957cda', '402860816bff91c0016bff91d8830007', 'real_name', '姓名', 'real_name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('40471eb4560bf0bbd2ffef17d48a269d', 'dbf4675875e14676a3f9a8b2b8941140', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-05-27 18:02:07', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('404b516d4f2229f292783db595b02ba1', '402860816bff91c0016bff91d8830007', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('405de5ea82e54138a0613dd41b006dfb', '56870166aba54ebfacb20ba6c770bd73', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2020-05-03 01:01:30', '2019-04-20 11:38:39', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('40675bb9f053aabf8823ddf4b5389141', 'b81de38db24047b497d476516f8a0865', 'aa', 'aa', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, NULL, NULL, '2020-02-24 14:56:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('4164314d6a51d100169a29872b7504d8', '402860816bff91c0016bff91ca7e0002', 'cert_time', '发证时间', 'cert_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('41d4215c01b0d26871f2cb83d3e532ae', '402860816bff91c0016bff91c0cb0000', 'bpm_status', '流程状态', NULL, 0, 1, 'String', 32, 0, '1', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 17, 'admin', '2019-07-19 18:09:01', '2019-07-19 15:35:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('422a44a15fa39fd57c3c23eb601f7c03', '56870166aba54ebfacb20ba6c770bd73', 'descc', '描述', NULL, 0, 1, 'String', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2020-05-03 01:01:30', '2019-04-20 11:38:39', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('42cccfa014c9e131a0a1b23f563d3688', '402860816bff91c0016bffa220a9000b', 'sex', '性别', 'sex', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('4312f618c83e07db82e468b81a1eaa45', '402860816bff91c0016bffa220a9000b', 'photo', '照片', 'photo', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 20, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('435b57180fc995e3c4ec42516963bca3', '4028839a6de2ebd3016de2ebd3870000', 'wl_code', '物料编码', 'wl_code', 0, 1, 'string', 60, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 6, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('44bdc595f1e565fc053e01134b92bb47', 'd3ae1c692b9640e0a091f8c46e17bb01', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-07-24 14:47:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('44e81e24d2384b0f187e8f69eda55390', '402860816bff91c0016bff91cda80003', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('45c0a1a89a1e2a72533b9af894be1011', '27fc5f91274344afa7673a732b279939', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('45d59eb647257fcbcb9d143ff1ba2080', 'deea5a8ec619460c9245ba85dbc59e80', 'pro_type', '产品类型', NULL, 0, 1, 'String', 32, 0, '', 'sex', '', '', 'radio', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2020-05-03 01:01:18', '2019-04-23 20:54:08', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('469b250595f15dfebe69991d72e4bfb2', 'e9faf717024b4aae95cff224ae9b6d97', 'name', '员工姓名', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('46be01bef342519e268902d0d36a7473', 'deea5a8ec619460c9245ba85dbc59e80', 'descc', '描述', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 11, 'admin', '2020-05-03 01:01:18', '2019-04-20 11:41:19', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('46f1a875f86a4f48d0540ad0d5e667d7', '56870166aba54ebfacb20ba6c770bd73', 'order_date', '下单时间', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2020-05-03 01:01:30', '2019-04-20 11:38:39', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('47c21a6b45e59a6b70bb9c0cc4510a68', '1acb6f81a1d9439da6cc4e868617b565', 'integral_val', '积分值', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 13, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('47fa05530f3537a1be8f9e7a9e98be82', 'd35109c3632c4952a19ecc094943dd71', 'sex', '性别', NULL, 0, 1, 'string', 32, 0, '', 'sex', '', '', 'list', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2020-02-24 17:29:16', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('4851697fdf63709d2bc7451b7415f4af', '32f75e4043ef4070919dbd4337186a3d', 'sex', '性别', NULL, 0, 1, 'String', 32, 0, '1', 'sex', '', '', 'list', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('485a8ddce2c033f88af674ec98b68e32', '402860816bff91c0016bffa220a9000b', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 40, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('492a462b212fc34b0ee70e872684ed7e', '7ea60a25fa27470e9080d6a921aabbd1', 'name', '用户名', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, NULL, NULL, '2019-04-17 00:22:21', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('499a5dac033a01ce58009e4c5b786697', 'e9faf717024b4aae95cff224ae9b6d97', 'age', '员工年龄', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('49cd3dbd4f7f7cf0d19b1ee1045cfa69', 'e67d26b610dd414c884c4dbb24e71ce3', 'post_code', '岗位编码', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:57', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('4b136f953675fffcc1b6d7d6d414d57e', '402880eb71d61d3d0171d61d3de30000', 'date', '日期', NULL, 0, 1, 'string', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '#{date}', 0, 1, 1, 0, 'single', '', '', 4, 'admin', '2020-05-03 00:54:16', '2020-05-02 23:59:33', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('4ba7c553ca4babcec75273c531cd65e1', '402860816bff91c0016bff91cfea0004', 'workplace', '工作单位', 'workplace', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('4c2cba9fc950333421c4193576b8384d', '32f75e4043ef4070919dbd4337186a3d', 'salary', '工资', NULL, 0, 1, 'double', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 10, 'admin', '2019-04-11 10:15:32', '2019-03-28 15:24:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('4c4f4067fa31737f3ff9e088130ef793', '4adec929a6594108bef5b35ee9966e9f', 'sex', '性别', NULL, 0, 1, 'String', 200, 0, '', 'sex', '', '', 'list', '', 120, NULL, '0', '', '{{ 2 }}', 0, 1, 1, 0, 'single', '', '', 4, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:58', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('4c570c5cf05590348e12621ca62773cf', '402860816aa5921f016aa5921f480000', 'name', '请假人', 'name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 2, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('4cacfa054e96791ab938b5c8f8e02cd1', '27fc5f91274344afa7673a732b279939', 'bpm_status', '流程状态', NULL, 0, 1, 'String', 2, 0, '', 'bpm_status', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, NULL, NULL, '2019-07-01 16:28:20', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('4f718d95ad9de33eac18fd0663e4c1f1', '32f75e4043ef4070919dbd4337186a3d', 'birthday', '生日', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('4f7cba71de7afe6efbd024f5f9935521', '402860816bff91c0016bff91cda80003', 'to_time', '截止时间', 'to_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('4faa7848b92f05bcb3cf03de34af9ff2', 'cb2d8534a2f544bc9c618dd49da66336', 'ddd', 'dd', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2020-02-24 17:22:42', '2020-02-24 15:15:14', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('506c9b0b2331a24e5c284274d28fe569', '27fc5f91274344afa7673a732b279939', 'kkk', '描述', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('508eb28e1409a2a9501cdf6fd7eb24c7', 'dbf4675875e14676a3f9a8b2b8941140', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-05-27 18:02:07', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('509a4f63f02e784bc04499a6a9be8528', 'd35109c3632c4952a19ecc094943dd71', 'update_by', '更新人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2020-02-24 17:29:16', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('519f68557b953fc2d38400182b187366', '402860816bff91c0016bffa220a9000b', 'residence_type', '户籍类别', 'residence_type', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('52ee861bc1b62cd8e4f10632b3d9d1b2', '79091e8277c744158530321513119c68', 'name', '顺序会签标题', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('56a7800e4e476812c74217c2aad781aa', '32feeb502544416c9bf41329c10a88f4', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('56cd0a76f922bf76d982b24a509e4782', '4028839a6de2ebd3016de2ebd3870000', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 3, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('56e247f12d62b49cd9bd537e3efecf16', '402860816bff91c0016bff91c0cb0000', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('57552a4f0b7b5c096ab8985ced57cc7d', 'cb2d8534a2f544bc9c618dd49da66336', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2020-02-24 17:22:42', '2020-02-24 15:15:14', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('588400f6ebcdd0bc9bb560dd36636af9', 'e2faf977fdaf4b25a524f58c2441a51c', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('58a96f945912d33b64ebf5dee98156dc', '402860816bff91c0016bffa220a9000b', 'mobile', '手机号', 'mobile', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 19, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('58eea85add4788b83c893092434bc413', 'fb19fb067cd841f9ae93d4eb3b883dc0', 'update_time', '更新日期', NULL, 0, 1, 'date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 4, NULL, NULL, '2019-03-23 11:39:48', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('59ae1e853668c676e85329aa029c68a6', '402860816bff91c0016bff91c0cb0000', 'status', '状态（1：申请中 2：通过）', 'status', 0, 1, 'string', 2, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('5a043c7ae042e48f50d1fb0bb3d760a8', '402880eb71d61d3d0171d61d3de30000', 'code', '编码', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '${order_num_rule_param}', 0, 1, 1, 0, 'single', '', '', 2, 'admin', '2020-05-03 00:54:16', '2020-05-02 23:59:33', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('5a1ab458d88bb766f92c3d791495cdcd', '402860816bff91c0016bff91d2810005', 'age', '年龄', 'age', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('5a4ef083dd572114aeb581b6828de545', '402860816bff91c0016bff91c7010001', 'award_name', '获奖名称', 'award_name', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('5a621f27aa443fe9eccc73717e4fa172', '4028318169e81b970169e81b97650000', 'method', '请求java方法', 'method', 0, 1, 'string', 500, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 8, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('5a655b208d6318ed02f236f15a319b5f', 'fbc35f067da94a70adb622ddba259352', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-07-03 19:44:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('5a6f88710c49bbe8e2e0ca58e149abad', '402860816bff91c0016bff91cda80003', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('5b17ba693745c258f6b66380ac851e5f', 'd35109c3632c4952a19ecc094943dd71', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 0, 'admin', '2020-02-24 17:29:16', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('5c76f5ecc774d7339eb0c2199c0052bc', '402860816bff91c0016bff91c0cb0000', 'biz_no', '编号', 'biz_no', 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 2, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('5c8c8d573e01e4f40b5a7c451515e1d2', '32feeb502544416c9bf41329c10a88f4', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('5dfbea516ee2390d712eace5405c5219', '402860816bff91c0016bff91ca7e0002', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('5e4484b7348dc3e59a0c58bdc3828cc0', '27fc5f91274344afa7673a732b279939', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('5e4ac29ac2007ceabf93368330290a42', '402860816bff91c0016bff91d8830007', 'order_no', '序号', 'order_no', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('5f5ac4d37fd1a3a09e2b19f0d4d99c0f', '4adec929a6594108bef5b35ee9966e9f', 'code', '编码', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '${order_num_rule_param}', 0, 1, 1, 0, 'single', '', '', 2, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:58', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('5f718d8968d908cd2e4de6ee4c74d644', '402880eb71d61d3d0171d61d3de30000', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 7, 'admin', '2020-05-03 00:54:16', '2020-05-02 23:59:33', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('6130dbb6d36bab8ee9154e7ab58af34c', '402880e570a5d7000170a5d700f50000', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 1, NULL, NULL, '2020-03-04 21:58:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('617349b18dab429009ccd304fd7d459c', '4028839a6de2ebd3016de2ebd3870000', 'update_by', '更新人', 'update_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 4, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('61c7a0058c264dd746eb35e6f50fc15b', '402860816aa5921f016aa5dedcb90009', 'update_time', '更新日期', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 5, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('6232ade7e2a0c1e97e2c0945b32e61b6', '402860816bff91c0016bffa220a9000b', 'paying_social_insurance', '是否上社保', 'paying_social_insurance', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 32, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('6352d477b6b2751780c5852e92d0daa6', '402880eb71d61d3d0171d61d3de30000', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'admin', '2020-05-03 00:54:16', '2020-05-02 23:59:33', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('635e09afc01aad757faacf1321465c23', 'b81de38db24047b497d476516f8a0865', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2020-02-24 14:56:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('6490a98dccb6df218feaeb4ce11bc03b', '402860816aa5921f016aa5921f480000', 'update_time', '修改时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 10, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('654362725195829005036b3db47ec826', '402860816bff91c0016bffa220a9000b', 'post', '职务', 'post', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('66a7ef842bc34e105a90186e48167ef2', 'dbf4675875e14676a3f9a8b2b8941140', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-05-27 18:02:07', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('68769fa7e4696e3a28f4cecf63076b7b', '402860816bff91c0016bff91ca7e0002', 'order_no', '序号', 'order_no', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('69666f21896136af16a6303aff440156', '402860816bff91c0016bffa220a9000b', 'nation', '民族', 'nation', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('69d11490788fecfc9fb7d74bf449ba86', '32f75e4043ef4070919dbd4337186a3d', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('6a0082c8ffbae092e99689520f1c83f7', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 9, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:01', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('6a30c2e6f01ddd24349da55a37025cc0', 'd35109c3632c4952a19ecc094943dd71', 'top_pic', '头像', NULL, 0, 1, 'String', 500, 0, '', '', '', '', 'image', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 11, 'admin', '2020-02-24 17:29:16', '2019-06-10 20:06:56', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('6b21f5239671023ca769b6717a51130e', '402880eb71d61d3d0171d61d3de30000', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 8, 'admin', '2020-05-03 00:54:16', '2020-05-02 23:59:33', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('6b6f3aa00b8e73fb785154e795189739', '402860816aa5921f016aa5dedcb90009', 'start_time', '会签发起时间', 'start_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('6cfb5acbbb69782bf0c7043b53f595b2', '402860816bff91c0016bff91cda80003', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('6e5c9d8e8b7eb6980ec246cb813b180b', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 10, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:01', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('6f73e96a659c200c083006b6fce1f043', '402860816bff91c0016bff91ca7e0002', 'cert_name', '证书名称', 'cert_name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('7154c75d754a5f88bef2b68829baf576', '4028318169e81b970169e81b97650000', 'operate_type', '操作类型', 'operate_type', 0, 1, 'string', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 4, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('71afb00a1971125ecfa13b4dfa49665e', '402860816bff91c0016bff91cfea0004', 'order_no', '序号', 'order_no', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('71d5b0675df5aba71688c9d7d75cccee', '4028318169e81b970169e81b97650000', 'log_type', '日志类型（1登录日志，2操作日志）', 'log_type', 0, 1, 'string', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 2, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('71e9ab74dae687837365e50eed090591', '1acb6f81a1d9439da6cc4e868617b565', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('7280c56a210e6a47794fda855d0c6abb', 'fbc35f067da94a70adb622ddba259352', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-07-03 19:44:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('72e784af5c47bbbc0534b29bf656bd61', '4028839a6de2ebd3016de2ebd3870000', 'id', '主键', 'id', 1, 0, 'string', 36, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'group', NULL, NULL, 1, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('7365f05f551092716223d5d449efd8c7', 'beee191324fd40c1afec4fda18bd9d47', 'name', 'ss', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('73dc6089556f3446e39d42df3dedb2db', '402880e570a5d7000170a5d700f50000', 'num', '数量', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, 'n', '0', '', '', 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2020-03-04 21:58:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('742329ccdb185cf5d3e0b5b0c05dcffa', '402860816bff91c0016bffa220a9000b', 'interest', '兴趣爱好', 'interest', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 34, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('744444a7ada3bbb05c6b114b5ba0d477', '402860816aa5921f016aa5dedcb90009', 'id', 'id', 'id', 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('74af99545de724a4abd2022581a36026', 'fb7125a344a649b990c12949945cb6c1', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-03-26 19:24:11', '2019-03-26 19:01:52', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('756b07656386dbd91245f7ffda32ae61', '402860816bff91c0016bff91d8830007', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('75841fa7c75ebdc94655bd5e44fbc9f6', '402860816bff91c0016bffa220a9000b', 'native_place', '籍贯', 'native_place', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('75ba781c67711bed71bba1c3e3c68e11', '8994f2817b5a45d9890aa04497a317c5', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 0, NULL, NULL, '2019-03-23 11:39:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('75e82f151e8cc12455f7f0d25bf4dac0', '4028839a6de2ebd3016de2ebd3870000', 'wl_name', '物料名称', 'wl_name', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 7, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('7639c1bc4327f1f674ffeab2ca261134', '32f75e4043ef4070919dbd4337186a3d', 'update_by', '更新人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('766ca866b72d118f5d8883de46a8c043', '4028839a6de2ebd3016de2ebd3870000', 'supplier', '供应商', 'supplier', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 15, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('78a40344207c791b8d7ac7de721ce1c4', '79091e8277c744158530321513119c68', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('78eb7e3b77cd49f9acb9b024cfe834e1', '402860816aa5921f016aa5dedcb90009', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 3, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('78fd804d93dc716fd8c2ccc45f788565', 'fb7125a344a649b990c12949945cb6c1', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-03-26 19:24:11', '2019-03-26 19:01:52', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('790c9f3dba773ed9a6ea3ad627393f57', '402860816bff91c0016bffa220a9000b', 'archives_location', '档案所在地', 'archives_location', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 36, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('7a665ed90ef64b4d65632c941e5795b2', '4b556f0168f64976a3d20bfb932bc798', 'sex', '性别', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, NULL, NULL, '2019-04-12 23:38:29', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('7b4c181e4ebd76022f75535ed6fd9de3', '4adec929a6594108bef5b35ee9966e9f', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 10, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:58', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('7b642d983ac06bfef91edde2c932dbe7', '1acb6f81a1d9439da6cc4e868617b565', 'xg_shangxian', '选购上限', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 14, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('7b849e57debfb889caea5e0fef09062b', 'beee191324fd40c1afec4fda18bd9d47', 'sex2', 'dd', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('7beb639aa9ffda07edb5ce1e49c2287f', '402860816bff91c0016bff91d2810005', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('7bf091da401b74d55b107fe9f930ea54', '4028839a6de2ebd3016de2ebd3870000', 'create_by', '创建人', 'create_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 2, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('7c6aecc377816c69147f1193b17dfcc5', 'e9faf717024b4aae95cff224ae9b6d97', 'sex', '员工性别', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('7cadf4e0be0b173bb5b8d39613e25190', '402860816bff91c0016bffa220a9000b', 'residence_postcode', '户籍邮编', 'residence_postcode', 0, 1, 'string', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 29, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('7cdbe0d563e15f3fb1fb32d996fe4ba7', '3d447fa919b64f6883a834036c14aa67', 'area', '区', NULL, 0, 1, 'String', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 4, 'admin', '2020-02-21 17:58:46', '2020-02-20 16:19:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('7d107728408c21ece332406a21f2d692', '402860816bff91c0016bff91cfea0004', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('7e066f60680158d47b328ef519d80e49', 'beee191324fd40c1afec4fda18bd9d47', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('7f10901c6ade3aa9d9ff46ed7039c70f', '1acb6f81a1d9439da6cc4e868617b565', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('813a5ebf7335309c7edb3803f7e4b204', '402880e570a5d7000170a5d700f50000', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 2, NULL, NULL, '2020-03-04 21:58:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('81ed9556c9fda1bbb46d94a53a6c90c7', '402860816bff91c0016bff91c0cb0000', 'depart_name', '部门名称', 'depart', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('840343a59a8e705821d393506c2bc1fe', '402880e570a5d7000170a5d700f50000', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 3, NULL, NULL, '2020-03-04 21:58:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('8422485e1cbf4455f9ded7d0af59379c', '402860816bff91c0016bff91cfea0004', 'to_time', '截止时间', 'to_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('845c70568d44a074f067d6d277950525', '402860816bff91c0016bffa220a9000b', 'entrytime', '入职时间', 'entrytime', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 23, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('8529ddaed8d5f3d9084e873203d55cac', '402860816bff91c0016bffa220a9000b', 'marital_status', '婚姻状况', 'marital_status', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 24, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('857a0daa9cd8a058f2f15fc7c5fb3571', '402860816bff91c0016bffa220a9000b', 'email', '邮箱', 'email', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 17, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('85e43fa87074845f86cf52606a23a57c', 'b81de38db24047b497d476516f8a0865', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2020-02-24 14:56:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('8652ca69a947fd4c961a3ac7c0fa252a', 'fb19fb067cd841f9ae93d4eb3b883dc0', 'create_by', '创建人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 1, NULL, NULL, '2019-03-23 11:39:48', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('86bbafef5683674a736cf7241c458d44', '27fc5f91274344afa7673a732b279939', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('86e0f3a8f31c60698157f139ed993954', '402860816bff91c0016bffa220a9000b', 'having_reserve_funds', '是否有公积金', 'having_reserve_funds', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 33, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('873e2bb041b17bff77d3aca72900ea1b', '56870166aba54ebfacb20ba6c770bd73', 'order_code', '订单编码', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2020-05-03 01:01:30', '2019-04-20 11:38:39', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('877391ae770a4ce2c95181ef410982ce', '4028318169e81b970169e81b97650000', 'request_param', '请求参数', 'request_param', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 10, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('87e82e3c723a6abb020122babdac6bd1', '8994f2817b5a45d9890aa04497a317c5', 'create_by', '创建人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 1, NULL, NULL, '2019-03-23 11:39:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('87f7a2703c5850f0b063dd866d0e2917', '402860816bff91c0016bffa220a9000b', 'birthday', '出生日期', 'birthday', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('87fafe1a4a8a626e3875697574c19f15', '402860816bff91c0016bff91d2810005', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 14, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('883265736ad6db0c98a7517d1f4a2488', '402880eb71d52dc30171d52dc3a10000', 'main_id', '主表ID', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 5, NULL, NULL, '2020-05-02 19:37:59', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('88a12570e14c9f6f442e731ae5ad0eb1', 'beee191324fd40c1afec4fda18bd9d47', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('89370ae67e241fa5d1e47d22adeaca7b', '402880eb71d52dc30171d52dc3a10000', 'date', '日期', NULL, 0, 1, 'string', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '#{date}', 0, 1, 1, 0, 'single', NULL, NULL, 4, NULL, NULL, '2020-05-02 19:37:58', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('89ab9eedbac6141e7a0df6d37a3655d0', 'e67d26b610dd414c884c4dbb24e71ce3', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:57', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('8a24fb45e2af120c253c8b61c0085f7a', '402860816bff91c0016bff91cda80003', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('8ac8a0c0087469a4e7579229ff17f273', 'e5464aa8fa7b47c580e91593cf9b46dc', 'jifen', '合计积分', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 10, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('8bd4deadc9e96c1a6d7abd77033105f6', 'e67d26b610dd414c884c4dbb24e71ce3', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:57', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('8c6518fec11fc4769ba4eb770c9e00f7', '4028839a6de2ebd3016de2ebd3870000', 'integral_val', '积分值', 'integral_val', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 11, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('8ca56210938fbe649f840e505eb9fd41', '56870166aba54ebfacb20ba6c770bd73', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2020-05-03 01:01:30', '2019-04-20 11:38:39', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('8e080f4ded1e3b2a1daa5b11eca4a0ff', '4adec929a6594108bef5b35ee9966e9f', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 7, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:58', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('8e131d4a438c907b3272474780be7603', '402880eb71d52dc30171d52dc3a10000', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 8, NULL, NULL, '2020-05-02 19:37:58', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('8e1e4cb5c41ba685c48ebabf0aacc469', '402880eb71d61d3d0171d61d3de30000', 'name', '名称', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '#{sysUserName}', 0, 1, 0, 0, 'single', '', '', 3, 'admin', '2020-05-03 00:54:16', '2020-05-02 23:59:33', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('8ea43fd1e4ce82becee61b2f1e2e843f', '32feeb502544416c9bf41329c10a88f4', 'sex', '性别', NULL, 0, 1, 'String', 32, 0, '', 'sex', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('8f1d302868640b72cef52171a023a203', 'e9faf717024b4aae95cff224ae9b6d97', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('8f3e6fb68179c690f748f3c541fb50f1', '7ea60a25fa27470e9080d6a921aabbd1', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-04-17 00:22:21', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('8fc0be84bed1216635c69af918e097ff', '402860816aa5921f016aa5dedcb90009', 'name', '并行会签标题', 'name', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('90a822b8a63bbbc1e9575c9f4e21e021', 'd35109c3632c4952a19ecc094943dd71', 'descc', '描述', NULL, 0, 1, 'string', 500, 0, '', '', '', '', 'textarea', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2020-02-24 17:29:16', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('90f39a6e29dae2e1fbb59d7d605f7c09', '1acb6f81a1d9439da6cc4e868617b565', 'iz_valid', '启用状态', NULL, 0, 1, 'String', 2, 0, '', 'air_china_valid', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 11, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('91be98b96dea1528abc943f9f131fd16', '402880e570a5d7000170a5d700f50000', 'price', '价格', NULL, 0, 1, 'double', 32, 0, '', '', '', '', 'text', '', 120, 'n', '0', '', '', 0, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2020-03-04 21:58:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('91f7cd9b59c0da033363f8a09b02ec96', '3d447fa919b64f6883a834036c14aa67', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2020-02-21 17:58:46', '2020-02-20 16:19:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('9341a3b2a734d8c73455c136e1cac8ad', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 8, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:01', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('9370c9304af30b8d29defe0a5ada6e5b', '62e29cdb81ac44d1a2d8ff89851b853d', 'DC_DDSA', 'DD', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, NULL, NULL, '2019-05-11 14:01:14', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('9371f61d39c5d57ddb0a2db96b2e2412', '402860816bff91c0016bffa220a9000b', 'speciality', '专业', 'speciality', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 15, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('947174892512ea97fafde899d427ea7e', '402860816bff91c0016bff91c0cb0000', 'real_name', '姓名', 'real_name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('94b8bf435175cc545366e11992280757', '32f75e4043ef4070919dbd4337186a3d', 'age', '年龄', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('94e682cb802777fe4205536888f69353', '402860816bff91c0016bff91d2810005', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('951c51699d728072d88196d30f7aad10', '4adec929a6594108bef5b35ee9966e9f', 'address', '地址', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '{{ demoFieldDefVal_getAddress() }}', 0, 1, 1, 0, 'single', '', '', 5, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:58', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('957386b500be42a200d6a56d54345392', 'deea5a8ec619460c9245ba85dbc59e80', 'num', '数量', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, 'n', '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2020-05-03 01:01:18', '2019-04-20 11:41:19', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('960d2847922b61dadeb3518ef55fb0c1', '1acb6f81a1d9439da6cc4e868617b565', 'wl_name', '物料名称', NULL, 0, 1, 'String', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('9665f02764774fdd77c19923d3ff3c3e', '4028318169e81b970169e81b97650000', 'cost_time', '耗时', 'cost_time', 0, 1, 'string', 19, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 12, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('966a4988298d5cb0be47848735ce8cb7', '4028839a6de2ebd3016de2ebd3870000', 'xg_shangxian', '选购上限', 'xg_shangxian', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 12, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('96c585a4f71e5c38ed25b9741366365b', '402860816bff91c0016bff91c7010001', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('9765efa2cafde6d0ede2215848c9e80b', '32f75e4043ef4070919dbd4337186a3d', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 0, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('98e82cb1595609a3b42fa75c60ac1229', '402860816bff91c0016bff91d2810005', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('9914a0c84805e72c4b6075e36edb13f9', '402860816aa5921f016aa5921f480000', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 9, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('9920ecec9c9109fc6b93e86f8fdfa03b', '402860816bff91c0016bffa220a9000b', 'depart_name', '所在部门', 'depart_name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'group', '', '', 2, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('99b43bbb23237815ebb74b12b4d7ea2f', '62e29cdb81ac44d1a2d8ff89851b853d', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-05-11 14:01:14', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('9a4dc8718000c30953a3923eb7db5096', '402880eb71d52dc30171d52dc3a10000', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2020-05-02 19:37:59', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('9a579c506f75f75baf88352a5eb2c249', '1acb6f81a1d9439da6cc4e868617b565', 'bpm_status', '流程状态', NULL, 0, 1, 'String', 2, 0, '1', 'bpm_status', '', '', 'list', '', 120, NULL, '0', '', '', 0, 0, 1, 0, 'single', '', '', 16, 'admin', '2019-06-10 14:47:14', '2019-05-07 16:54:43', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('9a9516645cbc8147b23333fea76aa2bb', 'b81de38db24047b497d476516f8a0865', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2020-02-24 14:56:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('9aa6738443d3d8a67cf50506199d15ad', 'cb2d8534a2f544bc9c618dd49da66336', 'aaae', 'aae', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, NULL, NULL, '2020-02-24 17:22:43', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('9bd056786694d67666f6924cc225b1a0', '3d447fa919b64f6883a834036c14aa67', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2020-02-21 17:58:46', '2020-02-20 16:19:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('9c40fb4db8afed3c682c6b8a732fd69d', 'e2faf977fdaf4b25a524f58c2441a51c', 'post', '用户岗位', NULL, 0, 1, 'String', 32, 0, '', 'post_code', 'air_china_post_materiel_main', 'post_name', 'sel_search', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('9cc60be30026301b9eafb8c310387f54', '402880e570a5d7000170a5d700f50000', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 4, NULL, NULL, '2020-03-04 21:58:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('9ceff249ef81ca6fa145456667c89051', '4adec929a6594108bef5b35ee9966e9f', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 8, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:58', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('9d85bafa399f28a40e1de1eeef747223', '4028318169e81b970169e81b97650000', 'ip', 'IP', 'ip', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 7, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('9d89ff1a019f41d80307652041490944', '32feeb502544416c9bf41329c10a88f4', 'name', '请假人', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('9e50680eb4e79b3af352a5933d239dff', 'dbf4675875e14676a3f9a8b2b8941140', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-05-27 18:02:07', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('a01a7fe5660206e6f407ed98b6c732d6', '402860816bff91c0016bff91cfea0004', 'phone', '联系方式', 'phone', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('a1f5daba36f536e7acf6a939826183b0', 'fb19fb067cd841f9ae93d4eb3b883dc0', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 0, NULL, NULL, '2019-03-23 11:39:48', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('a45eba33810c485b9d8e6f70818a1dfa', '402860816aa5921f016aa5921f480000', 'bpm_status', '流程状态', 'bpm_status', 0, 1, 'string', 50, 0, '1', 'bpm_status', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 1, 0, 'group', '', '', 7, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('a6471d4fb3dbffef01dab1f7d452bb30', '27fc5f91274344afa7673a732b279939', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('a6722b498602d7d7b5177b16789d8cc1', 'e5464aa8fa7b47c580e91593cf9b46dc', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-04-24 17:09:48', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('a76f561057ac9e43a8ca09e478a1eab8', '402860816bff91c0016bff91ca7e0002', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('a7822f6e4cffb37fc0729cbd4cfd8655', '32f75e4043ef4070919dbd4337186a3d', 'name', '用户名', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 5, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('a82ca42a76e9d2b8dae6d57dbb5edb54', 'deea5a8ec619460c9245ba85dbc59e80', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2020-05-03 01:01:18', '2019-04-20 11:41:19', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('a940adc4585fa3b5bd2114ea9abe8491', '402860816bff91c0016bff91ca7e0002', 'cert_level', '证书级别', 'cert_level', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('a94f1d7da64f3aa35c32155ea00ccb2f', '402860816bff91c0016bffa220a9000b', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('a9780eace237a15f26931dd6a9ec02e9', '758334cb1e7445e2822b60e807aec4a3', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-10-18 18:02:09', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('aa07931514727913413880b7a2b76dcb', 'd3ae1c692b9640e0a091f8c46e17bb01', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-07-24 14:47:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('aa4780601419c21dabb6c42fc511e71c', '402860816bff91c0016bffa220a9000b', 'have_children', '有无子女', 'have_children', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 25, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ab10e0aa029ded2f4420a33420de225d', '1acb6f81a1d9439da6cc4e868617b565', 'wl_code', '物料编码', NULL, 0, 1, 'String', 60, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ab1f880ba593f3757dac70e003945aa2', '402860816bff91c0016bff91c0cb0000', 'depart_id', '部门ID', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-07-19 18:09:01', '2019-07-17 19:38:45', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ab58f43f853fd1f65f83c22966883afb', 'beee191324fd40c1afec4fda18bd9d47', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ab8e6f1cca421c5ce395a2c1fdfd2100', '32feeb502544416c9bf41329c10a88f4', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('abe61a8ddf966a979457b763329a537b', 'e5464aa8fa7b47c580e91593cf9b46dc', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ac91565da5fb8fe43a4da3dec660b25f', '402860816bff91c0016bff91c7010001', 'award_place', '获奖地点', 'award_place', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('acff5c8aef3b6288b87fd91215012206', 'e5464aa8fa7b47c580e91593cf9b46dc', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ad061417d5b53c67975eb83657505218', '73162c3b8161413e8ecdca7eb288d0c9', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ad93762c6c4a1dd8331e5fa11215b568', 'e2faf977fdaf4b25a524f58c2441a51c', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ae31da96f38fc2941cb93d1bb1ab9431', 'deea5a8ec619460c9245ba85dbc59e80', 'product_name', '产品名字', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2020-05-03 01:01:18', '2019-04-20 11:41:19', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('ae77bb317366622698c8ab9bf2325833', 'deea5a8ec619460c9245ba85dbc59e80', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2020-05-03 01:01:18', '2019-04-20 11:41:19', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('af0fe0df8b626129de62e22212732517', '402860816bff91c0016bff91cda80003', 'speciality', '专业', 'speciality', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('af6c582b902e2f2bf9930eba61ae7938', '73162c3b8161413e8ecdca7eb288d0c9', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('afd3ef1d494a9b69d2c7a3cdde937f6f', '402860816bff91c0016bffa220a9000b', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 39, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b01304904babd7479de2acfe8a77157f', '402860816aa5921f016aa5921f480000', 'id', 'ID', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b05b4cbb74f389a7376f51ed9fd97030', '402860816bff91c0016bff91d8830007', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b0a06bdbefd304d81a1838d8d94deda9', '4b556f0168f64976a3d20bfb932bc798', 'name', '用户名', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, NULL, NULL, '2019-04-12 23:38:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b0b1cf271dd6b221a902da2d2f8f889a', 'e9faf717024b4aae95cff224ae9b6d97', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b18f96f96d979daa7336e81086ea2bc1', 'cb2d8534a2f544bc9c618dd49da66336', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'admin', '2020-02-24 17:22:42', '2020-02-24 15:15:14', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b1fc6e2ca671b19e57b08a4f57fc2454', 'fb7125a344a649b990c12949945cb6c1', 'update_time', '更新日期', NULL, 0, 1, 'date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-03-26 19:24:11', '2019-03-26 19:01:52', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b22694cf34ffb967b8717647816ad5df', 'e5464aa8fa7b47c580e91593cf9b46dc', 'fk_id', '外键', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', 'air_china_post_materiel_main', 'id', 15, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b276facab025f9750b0aff391693cc4b', '402860816bff91c0016bff91c7010001', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b2b0cb30159639bb1190e150322b7541', '4028839a6de2ebd3016de2ebd3870000', 'wl_unit', '计量单位', 'wl_unit', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 14, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b3542d3e7908ed885ecc4ba9e7300705', '4b556f0168f64976a3d20bfb932bc798', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-04-12 23:38:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b47af4d937e55c6208939bac5378bfad', '62e29cdb81ac44d1a2d8ff89851b853d', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-05-11 14:01:14', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b53203fc52d067bb4730dbcb7e496bd3', '56870166aba54ebfacb20ba6c770bd73', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2020-05-03 01:01:30', '2019-04-20 11:38:39', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('b5cfd3c9691a884430f3d9cd5ecb211f', 'e2faf977fdaf4b25a524f58c2441a51c', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b6874a05734cad8bd96ffd2f31f1ebca', '402860816bff91c0016bff91c7010001', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b733fa73519603b22d401fabbf9e9781', '402860816bff91c0016bff91c0cb0000', 'hiredate', '入职时间', 'hiredate', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b7938e4518f9062ce62702cf45986e06', 'e2faf977fdaf4b25a524f58c2441a51c', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b7a1243aaa712e2c152c0c7a46f88683', '402860816bff91c0016bff91d8830007', 'age', '年龄', 'age', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b91258e3dc15b28c2e3f0d934e6e27e8', 'fb7125a344a649b990c12949945cb6c1', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 0, NULL, NULL, '2019-03-26 19:01:52', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b92572ae142f8dd5f2ac02fb45e6b2c1', 'e2faf977fdaf4b25a524f58c2441a51c', 'name', '用户名', NULL, 0, 1, 'String', 32, 0, '', 'realname,username', 'report_user', 'name,account', 'sel_search', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('b9fbace24688c9c9a8c9be72c1d014e7', '402860816bff91c0016bffa220a9000b', 'phone', '电话', 'phone', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 18, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ba5f4b2affa94f36eda7f6f133db7ae3', '402860816bff91c0016bff91d2810005', 'workplace', '工作单位', 'workplace', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('bad02e68ea37bf387337516af84a1ddb', '73162c3b8161413e8ecdca7eb288d0c9', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('bb44475e1d1738a19745bf9f3ebf9e40', '402860816bff91c0016bff91cfea0004', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('bbbb38347b1a5340a1d293e455c632ce', 'fb19fb067cd841f9ae93d4eb3b883dc0', '3', '4', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, NULL, NULL, '2019-03-23 11:39:48', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('bc648624ad14c826bbc6e9b23a2b9858', '402860816bff91c0016bff91ca7e0002', 'employee_id', '员工ID', 'employee_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', 'oa_employee_info', 'id', 2, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('bc793fdbef9f6474425456c4eb9d197a', '402860816bff91c0016bff91cfea0004', 'witness', '证明人', 'references', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('bc7df6f3cf49f670c36a3de25e25e715', '402860816bff91c0016bff91d2810005', 'order_no', '序号', 'order_no', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('bcf2f5d1390227cf0d9ddfbd6121161f', '402880eb71d61d3d0171d61d3de30000', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'admin', '2020-05-03 00:54:16', '2020-05-02 23:59:33', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('bd39cb237049ac60218b3f4dd844f30c', '402860816bff91c0016bffa220a9000b', 'current_address', '现居住地', 'current_address', 0, 1, 'string', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 30, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('bde81809057b1a4c974fa0f090501fdd', '402860816aa5921f016aa5dedcb90009', 'update_by', '更新人', 'update_by', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 4, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('be3f8c157d8a1b40e6f7b836552a8095', '8994f2817b5a45d9890aa04497a317c5', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 2, NULL, NULL, '2019-03-23 11:39:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('be5eeda7d51dace73d3818bd8467b53b', '402860816bff91c0016bff91c0cb0000', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 15, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('be868eed386da3cfcf49ea9afcdadf11', 'd35109c3632c4952a19ecc094943dd71', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2020-02-24 17:29:16', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('bec3082fc5f0f194be5cd72cc2866ff4', 'e5464aa8fa7b47c580e91593cf9b46dc', 'wl_name', '物料名字', NULL, 0, 1, 'String', 200, 0, '', 'wl_code', 'air_china_materiel', 'wl_name', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('bed0bc67f570613eaa6a1bd8bcaaddcc', '4b556f0168f64976a3d20bfb932bc798', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-04-12 23:38:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('bed95ca6dd6bb4b4f7cfd787313a0a4b', '402880e570a5d7000170a5d700f50000', 'product_name', '产品名字', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', NULL, NULL, 6, NULL, NULL, '2020-03-04 21:58:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('bef85fd2846dd7ffc42d747095557d14', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'date', '日期', NULL, 0, 1, 'string', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '#{date}', 0, 1, 1, 0, 'single', '', '', 4, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:01', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('bf61aa04c5ca77ad54c764f8f8b2bdec', '402860816bff91c0016bff91d8830007', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('bfc2f19fae367f885adb8bd82a344391', '4028318169e81b970169e81b97650000', 'userid', '操作用户账号', 'userid', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 5, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('c0c80f370e1d400fe670d8702c3b84da', '4adec929a6594108bef5b35ee9966e9f', 'address_param', '地址（传参）', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '{{ demoFieldDefVal_getAddress("昌平区") }}', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:40:53', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('c0d66c95773774e7ac1f2a88df307e7a', '402860816aa5921f016aa5921f480000', 'reason', '请假原因', 'reason', 0, 1, 'string', 500, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('c29216d975fee50af175bca8c664a475', 'e67d26b610dd414c884c4dbb24e71ce3', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:56', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('c2b9eae184afe56d59ea7940d77cfced', '4adec929a6594108bef5b35ee9966e9f', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:57', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('c382877700a9987f4bcc2deea9ee9daf', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:01', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('c43d87b6340c29c0c354aa9c579f387f', '32feeb502544416c9bf41329c10a88f4', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('c456753a9c83e55fa241c4ec72c00f86', '402880eb71d52dc30171d52dc3a10000', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 6, NULL, NULL, '2020-05-02 19:37:58', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('c52711856d2e81ad1074265833f44328', 'b81de38db24047b497d476516f8a0865', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, NULL, NULL, '2020-02-24 14:56:07', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('c5dd2fc34ae825ebfced2ec74948654c', '402860816aa5921f016aa5921f480000', 'end_date', '请假结束时间', 'end_date', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('c5f6ea01a6523a60df153cc61dc92f4d', 'fbc35f067da94a70adb622ddba259352', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-07-03 19:44:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('c6730e00df5efd77fedf181df29102de', '402860816bff91c0016bff91c7010001', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('c75a7cb0a21958aa7ca5442f66019669', 'e9faf717024b4aae95cff224ae9b6d97', 'depart', '所属部门', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('c772ed9cbe2d1dc69e9ffa73d3487021', '4b556f0168f64976a3d20bfb932bc798', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-04-12 23:38:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('c91b697b1bcd2be943fc746e2660bc9e', '402860816bff91c0016bff91d2810005', 'real_name', '姓名', 'real_name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('c988bd2b6125c01ceb3579a207dd8784', '3d447fa919b64f6883a834036c14aa67', 'city', '市', NULL, 0, 1, 'String', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 3, 'admin', '2020-02-21 17:58:46', '2020-02-20 16:19:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('c9b698d3f75aa780ee1eb67ef090b15b', '73162c3b8161413e8ecdca7eb288d0c9', 'wl_code', '物料编码', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('caf5a071f2299c0f9ff2f3038d6d0fc6', '402860816bff91c0016bff91ca7e0002', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('cb33a708b95e19085f8c9001d2d5c64c', 'e9faf717024b4aae95cff224ae9b6d97', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('cb7da49a981a1b0acc5f7e8a0130bdcd', 'd35109c3632c4952a19ecc094943dd71', 'user_code', '用户编码', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 0, 0, 'single', '', '', 10, 'admin', '2020-02-24 17:29:16', '2019-05-11 16:26:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('cb871284e845e26e88242a96fac9c576', '402860816bff91c0016bff91c7010001', 'order_no', '序号', 'order_no', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('cc1ddc1304d3eb5d9a189da0a509ccd0', '32f75e4043ef4070919dbd4337186a3d', 'create_by', '创建人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ccf2f331af46ddc411b8039dd187621b', '4028839a6de2ebd3016de2ebd3870000', 'price', '单价', 'price', 0, 1, 'double', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 10, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('cee3c1dbf67b4a7d9626b8032897a4c7', '402860816bff91c0016bff91d8830007', 'employee_id', '员工ID', 'employee_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', 'oa_employee_info', 'id', 2, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('cf4c5a4c06ae6bac701edfeedfcd16aa', 'd3ae1c692b9640e0a091f8c46e17bb01', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-07-24 14:47:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('cfeb6491427aec2b4db9694af867da23', 'e9faf717024b4aae95cff224ae9b6d97', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d0559db07f05c870860f98313eb0f857', 'cb2d8534a2f544bc9c618dd49da66336', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2020-02-24 17:22:42', '2020-02-24 15:15:14', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d2551b70dc96a45a73b304bf755a996f', '402860816bff91c0016bff91d8830007', 'workplace', '工作单位', 'workplace', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d29dcdba14ea61808391fff2d927efea', '402860816bff91c0016bff91c0cb0000', 'work_summary', '工作总结', 'work_summary', 0, 1, 'Text', 65535, 0, '', '', '', '', 'textarea', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d3a701472d27ca8435d6a781a597038d', 'deea5a8ec619460c9245ba85dbc59e80', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2020-05-03 01:01:18', '2019-04-20 11:41:19', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('d44b89cc5f1828f7ceb9be196d549665', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'code', '编码', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '${order_num_rule_param}', 0, 1, 1, 0, 'single', '', '', 2, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:01', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('d48bfd2a840f9b1d00bd3b5599dca0f0', '402860816bff91c0016bff91cda80003', 'post', '职务', 'post', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d4d8cae3cd9ea93e378fc14303eee105', 'd35109c3632c4952a19ecc094943dd71', 'create_by', '创建人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2020-02-24 17:29:16', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d4dea775487aef5a7aea41791d3a65db', 'e5464aa8fa7b47c580e91593cf9b46dc', 'cycle_time', '发放周期(年)', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 11, 'admin', '2019-04-24 17:09:49', '2019-04-24 14:09:06', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d52c79620e21128fb69b4e8628cf25cc', 'dbf4675875e14676a3f9a8b2b8941140', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, NULL, NULL, '2019-05-27 18:02:07', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d530ab1bc3c51e8249a506a25d1003c7', '79091e8277c744158530321513119c68', 'start_time', '会签发起时间', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d53e70411c206efecb8dcd00174e907c', '62e29cdb81ac44d1a2d8ff89851b853d', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-05-11 14:01:14', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d5df0a35352ee960053686e959e9084b', '1acb6f81a1d9439da6cc4e868617b565', 'wl_unit', '计量单位', NULL, 0, 1, 'String', 100, 0, '', 'air_china_unit', '', '', 'list_multi', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d6fad89f4f26d733291863c2dfbc5945', '27fc5f91274344afa7673a732b279939', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d7082454dac60103fdda3e00b6557d39', '402880eb71d52dc30171d52dc3a10000', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 9, NULL, NULL, '2020-05-02 19:37:58', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('d766ea5809e2ec9ff2cdbcb18f610ab3', '7ea60a25fa27470e9080d6a921aabbd1', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-04-17 00:22:21', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d7c3b107f004cbc99dfe1fe6c79894d8', '402860816bff91c0016bffa220a9000b', 'social_insurance_type', '参加社保类型', 'social_insurance_type', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 35, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d8234b56acea1a752271a6c911dd91a0', '7ea60a25fa27470e9080d6a921aabbd1', 'age', '年龄', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, NULL, NULL, '2019-04-17 00:22:21', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d86909d794b01ad7fbb5e61d28b6603b', '73162c3b8161413e8ecdca7eb288d0c9', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d949d9157831c2fb7ba9f175081fe036', '402860816bff91c0016bff91cda80003', 'school', '学校', 'school', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d9d308feb95968dbb322c9bff0c18452', '32feeb502544416c9bf41329c10a88f4', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d9dde2f59bb148c6b7e95256acad8972', 'e67d26b610dd414c884c4dbb24e71ce3', 'post_name', '岗位名字', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:57', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('d9f9ae6986cb85019a3a4030f62f4d1a', '402860816bff91c0016bff91cfea0004', 'employee_id', '员工ID', 'employee_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', 'oa_employee_info', 'id', 2, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('db1fb3e12385cb967b63420cfe97cde6', '402860816bff91c0016bff91cda80003', 'employee_id', '员工ID', 'employee_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', 'oa_employee_info', 'id', 2, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('dc2bec862a4f0d600751c632d246f0ed', '4028839a6de2ebd3016de2ebd3870000', 'update_time', '更新日期', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 5, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('dd3e1e13d7429807b83a00a090e060b7', '402860816bff91c0016bffa220a9000b', 'join_party_info', '入党（团）时间地点', 'join_party_info', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 26, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ddc302f84c75a5f056855c664b82202a', '402860816aa5921f016aa5921f480000', 'days', '请假天数', 'days', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ddcc14a2105588982b4ae657f2893d81', '32feeb502544416c9bf41329c10a88f4', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('de34e46a66def956437635585db427b7', 'cb2d8534a2f544bc9c618dd49da66336', 'dde', 'ee', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 10, NULL, NULL, '2020-02-24 17:22:43', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('dedb920a5e876e27eb144464209ebe1e', '27fc5f91274344afa7673a732b279939', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('df489194c6008f3bd21b2c1c11fde337', 'fb19fb067cd841f9ae93d4eb3b883dc0', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 2, NULL, NULL, '2019-03-23 11:39:48', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('df58a7b1c3ed8f58a1994c0c0855db16', '4adec929a6594108bef5b35ee9966e9f', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 11, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:58', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('e09b191e3c37f9c89ae2192c75220b89', 'b81de38db24047b497d476516f8a0865', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, NULL, NULL, '2020-02-24 14:56:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('e0c5d6e483897d5c4e7894dc66dd1aff', '32feeb502544416c9bf41329c10a88f4', 'bpm_status', '流程状态', NULL, 0, 1, 'String', 2, 0, '', 'bpm_status', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:58', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('e24de426223dc0271a55eccc1d5457d0', '73162c3b8161413e8ecdca7eb288d0c9', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('e2d73ccda7f10f5a1ccce3c48b1e699e', '402860816bff91c0016bffa220a9000b', 'residence_street', '户口所在街道', 'residence_street', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 27, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('e4914fdff68ac72486ada105e6e9fa36', 'e9faf717024b4aae95cff224ae9b6d97', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('e4a4c1d50b7b46678bc14fd5b90ee082', '73162c3b8161413e8ecdca7eb288d0c9', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('e50b4398731e06572c247993a0dcc38d', 'd35109c3632c4952a19ecc094943dd71', 'name', '用户名', NULL, 0, 1, 'string', 200, 0, '', '', '', '', 'text', '', 120, '*', '0', '', '', 0, 1, 1, 0, 'single', '', '', 5, 'admin', '2020-02-24 17:29:16', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('e53f53766d1f7718b3ee5eabe105b969', '402860816bff91c0016bffa220a9000b', 'social_insurance_time', '五险一金日期', 'social_insurance_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 38, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('e60a8e496b0f7081dbfe4253b3218546', '402880eb71d61d3d0171d61d3de30000', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 10, 'admin', '2020-05-03 00:54:16', '2020-05-02 23:59:33', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('e672d5974a06d5c37b3b4c94a6f29f96', '4028318169e81b970169e81b97650000', 'request_url', '请求路径', 'request_url', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 9, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('e7aade12ca722b59c1ec681d14247ff8', '402860816bff91c0016bff91d8830007', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 14, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('e7c367221181aa9d1fc395e09796be8d', '402880eb71d52dc30171d52dc3a10000', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 7, NULL, NULL, '2020-05-02 19:37:58', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('e845925368919482df6dac58e6ed708d', '402860816bff91c0016bff91d8830007', 'phone', '联系方式', 'phone', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('e88d328af34dd8a17f51437c52b68a2d', '402860816bff91c0016bff91cfea0004', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('e99cc08f4d88dd8f788399db8d448ee8', '62e29cdb81ac44d1a2d8ff89851b853d', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-05-11 14:01:14', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ea644c4c208739640933ba6e568045c1', 'e2faf977fdaf4b25a524f58c2441a51c', 'ruz_date', '入职时间', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ea96d1c33f0f0d7245045e70a5793257', '402860816bff91c0016bffa220a9000b', 'current_postcode', '现居住地邮编', 'current_postcode', 0, 1, 'string', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 31, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ebc41362681919cc680fcc58bf87fdcb', '1acb6f81a1d9439da6cc4e868617b565', 'price', '单价', NULL, 0, 1, 'double', 10, 2, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 12, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ec20e66d5eb9b8b7f58de9edc0f7630b', '1acb6f81a1d9439da6cc4e868617b565', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ec5e9cb5809b2f8ce1446df4a27693f0', '27fc5f91274344afa7673a732b279939', 'name', '用户名', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ed16f23d08e7bcda11a1383fda68057e', '402860816bff91c0016bff91c7010001', 'employee_id', '员工ID', 'employee_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', 'oa_employee_info', 'id', 2, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('edda30c64e1dccee510d40b77a8ca094', 'fb7125a344a649b990c12949945cb6c1', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-03-26 19:24:11', '2019-03-26 19:01:52', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ee09e0e21fa350b9346b70292dcfca00', '79091e8277c744158530321513119c68', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ee4ffe04a25fcf556e78183f1f521546', '402860816aa5921f016aa5921f480000', 'create_by', '创建人id', 'create_by', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 8, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ee5803611f63643059b6375166d71567', '402860816bff91c0016bff91c7010001', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ef81373c5fd7130d7e23859d90c9eb3e', '402860816bff91c0016bff91cda80003', 'from_time', '开始日期', 'from_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('efd1b955a75b5046e9857e00fe94ae2c', 'fbc35f067da94a70adb622ddba259352', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-07-03 19:44:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f015cc2ffdcc2c4be1e9b3622eb69b52', 'fbc35f067da94a70adb622ddba259352', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, NULL, NULL, '2019-07-03 19:44:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f06b2bb01ea1fae487b7e3c3eb521d5b', 'd3ae1c692b9640e0a091f8c46e17bb01', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-07-24 14:47:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f0967fd139b440f79f21248bf4e4a209', 'd3ae1c692b9640e0a091f8c46e17bb01', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-07-24 14:47:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f0a453930aa16ca32f2e3be860bfe542', '402860816bff91c0016bffa220a9000b', 'education', '学历', 'education', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 14, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f12753b4a3815697a72017a7436fe733', 'e2faf977fdaf4b25a524f58c2441a51c', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f1ab7d3b55ade57eeac6c55b32ce813a', '1acb6f81a1d9439da6cc4e868617b565', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f1c7fde21f26c7ed64a0ef1095900c52', '4028318169e81b970169e81b97650000', 'request_type', '请求类型', 'request_type', 0, 1, 'string', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 11, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f3284a1ce6da9b887dce89091eaa0f6b', '402880e570a5d7000170a5d700f50000', 'pro_type', '产品类型', NULL, 0, 1, 'String', 32, 0, '', 'sex', '', '', 'radio', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2020-03-04 21:58:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f4647a91a4ac5d6d32bb0692b800bffe', '402860816bff91c0016bff91c0cb0000', 'probation_post', '试用期职位', 'probation_post', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f4b0bc7f3d6562e28d7c5e2d56510ecd', 'e5464aa8fa7b47c580e91593cf9b46dc', 'first_num', '首次数量', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-04-24 17:09:49', '2019-04-24 14:31:31', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f558359b06aea79a992c102ce3563a4d', '4028318169e81b970169e81b97650000', 'username', '操作用户名称', 'username', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 6, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f5d2475aec4b9016dfc0c8772e1704ea', '402880eb71d52dc30171d52dc3a10000', 'code', '编码', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '${order_num_rule_param}', 0, 1, 1, 0, 'single', NULL, NULL, 2, NULL, NULL, '2020-05-02 19:37:59', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('f6afcb7d8ea81879593ff737b55ddcc0', '402860816bff91c0016bff91cda80003', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f6f8aed87ec73994f6a12abbc079dbb1', '402860816bff91c0016bffa220a9000b', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 41, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f7332af7586c83c87f7b9ea144a5292d', '62e29cdb81ac44d1a2d8ff89851b853d', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-05-11 14:01:14', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f76719783433487f4710232e2ae0e521', '402860816bff91c0016bff91cfea0004', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f7e7eb84ddc34d7e09d10af213ac6667', '402860816bff91c0016bff91d2810005', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f81d7103c0c857e5c744cda2bc4c000a', '402860816bff91c0016bff91ca7e0002', 'cert_organizations', '发证机关', 'cert_organizations', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f82db8edef5babf741914b0fa221329b', '4028839a6de2ebd3016de2ebd3870000', 'bpm_status', '流程状态', 'bpm_status', 0, 1, 'string', 2, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 16, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f8a0fd20a1173270afdfed1129d5c669', '402860816bff91c0016bffa220a9000b', 'depart_id', '所在部门id', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 44, 'admin', '2019-07-22 16:15:32', '2019-07-19 15:33:44', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f8cc6be747fec10802eb625ac529c16f', '402860816bff91c0016bff91cfea0004', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f90bcb38fb89988bd40d1618aa75cea0', '758334cb1e7445e2822b60e807aec4a3', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-10-18 18:02:09', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f94db83e41c69f407d3c9a81c5892269', '402860816bff91c0016bffa220a9000b', 'first_job_time', '首次工作时间', 'first_job_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 22, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('f95d2cbefd25444909c83aaf8c4f72fb', '402860816bff91c0016bff91ca7e0002', 'memo', '备注', 'memo', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('fa3a12d7abf72b23afe425f8dbd57f86', '1acb6f81a1d9439da6cc4e868617b565', 'size_type', '尺码类型', NULL, 0, 1, 'String', 2, 0, '', 'air_china_size', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('fa8f5a0ba673e0208934567462844eab', '402860816bff91c0016bff91ca7e0002', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('faaaca21b7b2b16089c885f3224e4dc5', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'main_id', '主表ID', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', 'demo_field_def_val_main', 'id', 5, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:55', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('fafb32cf7e63bca93bbd70b0a0ea11fc', '758334cb1e7445e2822b60e807aec4a3', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, NULL, NULL, '2019-10-18 18:02:09', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('fc55d467102c2c782286f546d7820c3d', '73162c3b8161413e8ecdca7eb288d0c9', 'pid', '父物料', NULL, 0, 1, 'String', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('fc76a3832d232829852cae6c66e44f67', '402860816bff91c0016bffa220a9000b', 'identity_no', '身份证号', 'identity_no', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 21, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('fcd519058d68fa4dab192335602b5d24', '402860816bff91c0016bffa220a9000b', 'real_name', '姓名', 'real_name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('fd0586cae06685959415d9017b2bdf49', '758334cb1e7445e2822b60e807aec4a3', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-10-18 18:02:09', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('fde00160a5d664effaa4b5552e814e74', 'fb7125a344a649b990c12949945cb6c1', 'sex', '性别', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-03-26 19:24:11', '2019-03-26 19:01:52', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('fed133a00f57245d4cfb02dd3c3ce7c1', '4adec929a6594108bef5b35ee9966e9f', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 9, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:58', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('fef2add806c5e1ddd01c79c7e84f5a65', 'cb2d8534a2f544bc9c618dd49da66336', 'cc', 'cc', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, NULL, NULL, '2020-02-24 17:22:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ff49b468e54e137032f7e4d976b83b5a', '402860816bff91c0016bffa220a9000b', 'politically_status', '政治面貌', 'politically_status', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ff601f75d0e7ced226748eb8fba2c896', '402860816bff91c0016bff91d8830007', 'relation', '关系', 'relation', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ffacafee9fa46eb297ca3252f95acef9', '402860816bff91c0016bffa220a9000b', 'school', '毕业学校', 'school', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('ffcbf379fffabbd13aa2c22ce565ec12', '79091e8277c744158530321513119c68', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "base"."onl_cgform_field" VALUES ('05ed6a78a2e9d0c82bfa2c55898570b8', '997ee931515a4620bc30a9c1246429a9', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'admin', '2020-05-25 15:42:19.396', '2020-05-03 00:56:56', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('bdea5b776a15897265c43e6ee44af2e1', '997ee931515a4620bc30a9c1246429a9', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2020-05-25 15:42:19.42', '2020-05-03 00:56:56', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('03988419d751a330c2b0f0519a531880', '997ee931515a4620bc30a9c1246429a9', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 1, 0, 0, 0, 'group', '', '', 3, 'admin', '2020-05-25 15:42:19.428', '2020-05-03 00:56:56', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('ea309f9cd81ede7b9b36a1377a3a40d8', '997ee931515a4620bc30a9c1246429a9', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2020-05-25 15:42:19.437', '2020-05-03 00:56:56', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('2640235b9638547f1776b930bd8c12b4', '997ee931515a4620bc30a9c1246429a9', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2020-05-25 15:42:19.447', '2020-05-03 00:56:56', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('de8f510d358f499dcd966e97708f82d4', '997ee931515a4620bc30a9c1246429a9', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'admin', '2020-05-25 15:42:19.456', '2020-05-03 00:56:56', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('86f29e9919766e0d1128263608c016a0', '997ee931515a4620bc30a9c1246429a9', 'type_name', '商品分类', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 7, 'admin', '2020-05-25 15:42:19.463', '2020-05-03 00:56:56', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('df4c5e8411c102f02a6fe6727e858d55', '997ee931515a4620bc30a9c1246429a9', 'pic', '分类图片', NULL, 0, 1, 'string', 500, 0, '', '', '', '', 'image', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2020-05-25 15:42:19.472', '2020-05-03 00:56:56', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('c59f39e7b3bb877398f16796b2cd7962', '997ee931515a4620bc30a9c1246429a9', 'pid', '父级节点', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 0, 0, 'single', '', '', 9, 'admin', '2020-05-25 15:42:19.48', '2020-05-03 00:56:56', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('d0d1be336726df9c41f2173f8886ba35', '997ee931515a4620bc30a9c1246429a9', 'has_child', '是否有子节点', NULL, 0, 1, 'string', 3, 0, '', 'yn', '', '', 'list', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 10, 'admin', '2020-05-25 15:42:19.488', '2020-05-03 00:56:56', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('ac9a31cf5ca7497830d6304055ee1f33', 'fe27f28b007245e3af5266180d04f2c5', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, NULL, NULL, '2020-05-25 15:49:20.687', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('7c1cb29d778e8805999e7a8f76f69114', 'fe27f28b007245e3af5266180d04f2c5', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2020-05-25 15:49:20.697', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('cfec1cdf1f2c1157407044052ce1fde5', 'fe27f28b007245e3af5266180d04f2c5', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2020-05-25 15:49:20.698', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('f0c62170729f44a96aee9f1f33f98345', 'fe27f28b007245e3af5266180d04f2c5', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2020-05-25 15:49:20.699', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('51ef7eb33c1a6c846bf934356ed7883f', 'fe27f28b007245e3af5266180d04f2c5', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2020-05-25 15:49:20.7', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('1cf8dd83db94fef36411eb64fa8e1743', 'fe27f28b007245e3af5266180d04f2c5', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, NULL, NULL, '2020-05-25 15:49:20.7', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('095ae390815e9c255a0914f7d046d674', 'fe27f28b007245e3af5266180d04f2c5', 'goodsid', '药品编码', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, 'n6-16', '1', '', '', 1, 1, 1, 0, 'single', '', '', 7, NULL, NULL, '2020-05-25 15:49:20.701', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('bdb3aa28f1cc20415107972b05d76599', 'fe27f28b007245e3af5266180d04f2c5', 'goodsname', '药品名称', NULL, 0, 1, 'string', 256, 0, '', '', '', '', 'text', '', 120, NULL, '1', '', '', 1, 1, 1, 0, 'single', '', '', 8, NULL, NULL, '2020-05-25 15:49:20.703', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('3e85b444519bb33ad555d78579a303eb', 'fe27f28b007245e3af5266180d04f2c5', 'unid', '单位', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, NULL, NULL, '2020-05-25 15:49:20.704', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('385c450f394bf56da85904266efb375c', 'fe27f28b007245e3af5266180d04f2c5', 'price', '价格', NULL, 0, 1, 'BigDecimal', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 10, NULL, NULL, '2020-05-25 15:49:20.705', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('cc83965dbd489e3504afc56ef51c06b9', '4028e446724ad0b901724ad0b9500000', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2020-05-25 15:51:32.441', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('b0bfa292a743e5c65c8d0472b10389e9', '4028e446724ad0b901724ad0b9500000', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 2, NULL, NULL, '2020-05-25 15:51:32.446', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('76b046bca8f96f8ffd72e9f3edbeb6af', '4028e446724ad0b901724ad0b9500000', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 3, NULL, NULL, '2020-05-25 15:51:32.451', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('3ce824f32a1c869a11f4b901a284f25a', '4028e446724ad0b901724ad0b9500000', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 4, NULL, NULL, '2020-05-25 15:51:32.456', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('fca0357a1ef29cc7ff5fdce65f3f3e0e', '4028e446724ad0b901724ad0b9500000', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 5, NULL, NULL, '2020-05-25 15:51:32.46', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('037183e0bf8c4cc1f85a4f6df41bfba8', '4028e446724ad0b901724ad0b9500000', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 6, NULL, NULL, '2020-05-25 15:51:32.465', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('bdfb09ffa25260edc0bfccf6f983f8fc', '4028e446724ad0b901724ad0b9500000', 'goodsid', '药品编码', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, 'n6-16', '1', '', '', 1, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2020-05-25 15:51:32.469', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('0bacce1e0e1607e7189cc7d50809b65d', '4028e446724ad0b901724ad0b9500000', 'goodsname', '药品名称', NULL, 0, 1, 'string', 256, 0, '', '', '', '', 'text', '', 120, NULL, '1', '', '', 1, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2020-05-25 15:51:32.474', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('fcc2c8896c9bd2fa03e856a698a8bf60', '4028e446724ad0b901724ad0b9500000', 'unid', '单位', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', NULL, NULL, 9, NULL, NULL, '2020-05-25 15:51:32.484', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('855c939a10d8c4c28d5832d866dd3185', '4028e446724ad0b901724ad0b9500000', 'price', '价格', NULL, 0, 1, 'BigDecimal', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', NULL, NULL, 10, NULL, NULL, '2020-05-25 15:51:32.489', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('5f4c7a5e979d5b4ddde0307006fdcd14', '4028e446724ad0b901724ae0f5e30001', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', NULL, NULL, 1, NULL, NULL, '2020-05-25 16:09:16.522', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('96c94a65f0c0cd71fb59ef2078de48eb', '4028e446724ad0b901724ae0f5e30001', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 2, NULL, NULL, '2020-05-25 16:09:16.528', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('fd5864843831ee7f59a35566fa52cd6b', '4028e446724ad0b901724ae0f5e30001', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 1, 0, 0, 0, 'group', NULL, NULL, 3, NULL, NULL, '2020-05-25 16:09:16.535', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('bc500a004341c083351695aa31496d83', '4028e446724ad0b901724ae0f5e30001', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 4, NULL, NULL, '2020-05-25 16:09:16.541', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('f649a1e9ce88e1bad6421c3e0d669734', '4028e446724ad0b901724ae0f5e30001', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 5, NULL, NULL, '2020-05-25 16:09:16.547', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('bb42cff2ba2286137981af88cabc6f3f', '4028e446724ad0b901724ae0f5e30001', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 6, NULL, NULL, '2020-05-25 16:09:16.551', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('441f1a26790f632cee14495a5d103346', '4028e446724ad0b901724ae0f5e30001', 'type_name', '商品分类', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', NULL, NULL, 7, NULL, NULL, '2020-05-25 16:09:16.556', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('e5ac7d855fef2c8bc71e3bb3e7d6eff8', '4028e446724ad0b901724ae0f5e30001', 'pic', '分类图片', NULL, 0, 1, 'string', 500, 0, '', '', '', '', 'image', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', NULL, NULL, 8, NULL, NULL, '2020-05-25 16:09:16.56', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('0e3f0d37cc3908ff7dfefa4e0a43e6a4', '4028e446724ad0b901724ae0f5e30001', 'pid', '父级节点', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 0, 0, 'single', NULL, NULL, 9, NULL, NULL, '2020-05-25 16:09:16.565', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO "base"."onl_cgform_field" VALUES ('f0e41e2f56cd82ac085c7ce8acb55ce4', '4028e446724ad0b901724ae0f5e30001', 'has_child', '是否有子节点', NULL, 0, 1, 'string', 3, 0, '', 'yn', '', '', 'list', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', NULL, NULL, 10, NULL, NULL, '2020-05-25 16:09:16.57', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');

-- ----------------------------
-- Table structure for onl_cgform_head
-- ----------------------------
DROP TABLE IF EXISTS "base"."onl_cgform_head";
CREATE TABLE "base"."onl_cgform_head" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "table_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "table_type" int4 NOT NULL,
  "table_version" int4,
  "table_txt" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "is_checkbox" varchar(5) COLLATE "pg_catalog"."default" NOT NULL,
  "is_db_synch" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "is_page" varchar(5) COLLATE "pg_catalog"."default" NOT NULL,
  "is_tree" varchar(5) COLLATE "pg_catalog"."default" NOT NULL,
  "id_sequence" varchar(200) COLLATE "pg_catalog"."default",
  "id_type" varchar(100) COLLATE "pg_catalog"."default",
  "query_mode" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "relation_type" int4,
  "sub_table_str" varchar(1000) COLLATE "pg_catalog"."default",
  "tab_order_num" int4,
  "tree_parent_id_field" varchar(50) COLLATE "pg_catalog"."default",
  "tree_id_field" varchar(50) COLLATE "pg_catalog"."default",
  "tree_fieldname" varchar(50) COLLATE "pg_catalog"."default",
  "form_category" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "form_template" varchar(50) COLLATE "pg_catalog"."default",
  "form_template_mobile" varchar(50) COLLATE "pg_catalog"."default",
  "scroll" int4,
  "copy_version" int4,
  "copy_type" int4,
  "physic_id" varchar(32) COLLATE "pg_catalog"."default",
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "theme_template" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."onl_cgform_head"."id" IS '主键ID';
COMMENT ON COLUMN "base"."onl_cgform_head"."table_name" IS '表名';
COMMENT ON COLUMN "base"."onl_cgform_head"."table_type" IS '表类型: 0单表、1主表、2附表';
COMMENT ON COLUMN "base"."onl_cgform_head"."table_version" IS '表版本';
COMMENT ON COLUMN "base"."onl_cgform_head"."table_txt" IS '表说明';
COMMENT ON COLUMN "base"."onl_cgform_head"."is_checkbox" IS '是否带checkbox';
COMMENT ON COLUMN "base"."onl_cgform_head"."is_db_synch" IS '同步数据库状态';
COMMENT ON COLUMN "base"."onl_cgform_head"."is_page" IS '是否分页';
COMMENT ON COLUMN "base"."onl_cgform_head"."is_tree" IS '是否是树';
COMMENT ON COLUMN "base"."onl_cgform_head"."id_sequence" IS '主键生成序列';
COMMENT ON COLUMN "base"."onl_cgform_head"."id_type" IS '主键类型';
COMMENT ON COLUMN "base"."onl_cgform_head"."query_mode" IS '查询模式';
COMMENT ON COLUMN "base"."onl_cgform_head"."relation_type" IS '映射关系 0一对多  1一对一';
COMMENT ON COLUMN "base"."onl_cgform_head"."sub_table_str" IS '子表';
COMMENT ON COLUMN "base"."onl_cgform_head"."tab_order_num" IS '附表排序序号';
COMMENT ON COLUMN "base"."onl_cgform_head"."tree_parent_id_field" IS '树形表单父id';
COMMENT ON COLUMN "base"."onl_cgform_head"."tree_id_field" IS '树表主键字段';
COMMENT ON COLUMN "base"."onl_cgform_head"."tree_fieldname" IS '树开表单列字段';
COMMENT ON COLUMN "base"."onl_cgform_head"."form_category" IS '表单分类';
COMMENT ON COLUMN "base"."onl_cgform_head"."form_template" IS 'PC表单模板';
COMMENT ON COLUMN "base"."onl_cgform_head"."form_template_mobile" IS '表单模板样式(移动端)';
COMMENT ON COLUMN "base"."onl_cgform_head"."scroll" IS '是否有横向滚动条';
COMMENT ON COLUMN "base"."onl_cgform_head"."copy_version" IS '复制版本号';
COMMENT ON COLUMN "base"."onl_cgform_head"."copy_type" IS '复制表类型1为复制表 0为原始表';
COMMENT ON COLUMN "base"."onl_cgform_head"."physic_id" IS '原始表ID';
COMMENT ON COLUMN "base"."onl_cgform_head"."update_by" IS '修改人';
COMMENT ON COLUMN "base"."onl_cgform_head"."update_time" IS '修改时间';
COMMENT ON COLUMN "base"."onl_cgform_head"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."onl_cgform_head"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."onl_cgform_head"."theme_template" IS '主题模板';

-- ----------------------------
-- Records of onl_cgform_head
-- ----------------------------
INSERT INTO "base"."onl_cgform_head" VALUES ('3d447fa919b64f6883a834036c14aa67', 'test_enhance_select', 1, 5, 'js增强实现下拉联动效果', 'N', 'Y', 'Y', 'N', NULL, 'UUID', 'single', NULL, NULL, NULL, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'admin', '2020-02-21 17:58:46', 'admin', '2020-02-20 16:19:00', 'normal');
INSERT INTO "base"."onl_cgform_head" VALUES ('402880e570a5d7000170a5d700f50000', 'test_order_product$1', 1, 11, '订单产品明细', 'N', 'N', 'Y', 'N', NULL, 'UUID', 'single', NULL, NULL, NULL, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, 1, 1, 'deea5a8ec619460c9245ba85dbc59e80', NULL, NULL, 'admin', '2020-03-04 21:58:16', NULL);
INSERT INTO "base"."onl_cgform_head" VALUES ('402880eb71d61d3d0171d61d3de30000', 'demo_field_def_val_sub$1', 1, 2, '示例：控件默认值（子表）', 'Y', 'N', 'Y', 'N', NULL, 'UUID', 'single', NULL, NULL, NULL, NULL, NULL, NULL, 'demo', '1', NULL, 1, 1, 1, '4fb8e12a697f4d5bbe9b9fb1e9009486', 'admin', '2020-05-03 00:54:16', 'admin', '2020-05-02 23:59:33', 'normal');
INSERT INTO "base"."onl_cgform_head" VALUES ('4adec929a6594108bef5b35ee9966e9f', 'demo_field_def_val_main', 2, 1, '示例：控件默认值（主表）', 'Y', 'Y', 'Y', 'N', NULL, 'UUID', 'single', NULL, 'demo_field_def_val_sub', NULL, NULL, NULL, NULL, 'demo', '1', NULL, 1, NULL, 0, NULL, 'admin', '2020-05-02 19:37:57', 'admin', '2020-04-10 19:35:57', 'normal');
INSERT INTO "base"."onl_cgform_head" VALUES ('4fb8e12a697f4d5bbe9b9fb1e9009486', 'demo_field_def_val_sub', 3, 1, '示例：控件默认值（子表）', 'Y', 'Y', 'Y', 'N', NULL, 'UUID', 'single', 0, NULL, 1, NULL, NULL, NULL, 'demo', '1', NULL, 1, NULL, 0, NULL, 'admin', '2020-05-02 19:37:54', 'admin', '2020-04-10 19:47:01', 'normal');
INSERT INTO "base"."onl_cgform_head" VALUES ('56870166aba54ebfacb20ba6c770bd73', 'test_order_main', 2, 11, '测试订单主表', 'N', 'Y', 'Y', 'N', NULL, 'UUID', 'single', NULL, 'test_order_product', NULL, NULL, NULL, NULL, 'bdfl_include', '2', NULL, 0, NULL, 0, NULL, 'admin', '2020-05-03 01:01:30', 'admin', '2019-04-20 11:38:39', 'erp');
INSERT INTO "base"."onl_cgform_head" VALUES ('d35109c3632c4952a19ecc094943dd71', 'test_demo', 1, 18, '测试用户表', 'N', 'Y', 'Y', 'N', NULL, 'UUID', 'single', NULL, NULL, NULL, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'admin', '2020-02-24 17:29:16', 'admin', '2019-03-15 14:24:35', 'normal');
INSERT INTO "base"."onl_cgform_head" VALUES ('deea5a8ec619460c9245ba85dbc59e80', 'test_order_product', 3, 12, '订单产品明细', 'N', 'Y', 'Y', 'N', NULL, 'UUID', 'single', 0, NULL, 1, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'admin', '2020-05-03 01:01:18', 'admin', '2019-04-20 11:41:19', 'normal');
INSERT INTO "base"."onl_cgform_head" VALUES ('997ee931515a4620bc30a9c1246429a9', 'test_shoptype_tree', 1, 4, '商品分类', 'Y', 'Y', 'Y', 'Y', NULL, 'UUID', 'single', NULL, NULL, NULL, 'pid', 'has_child', 'type_name', 'temp', '1', NULL, 1, NULL, 0, NULL, 'admin', '2020-05-25 15:42:19.501', 'admin', '2020-05-03 00:56:56', 'normal');
INSERT INTO "base"."onl_cgform_head" VALUES ('4028e446724ad0b901724ad0b9500000', 'goods$1', 1, 1, '药品字典', 'Y', 'N', 'Y', 'N', NULL, 'UUID', 'single', NULL, NULL, NULL, NULL, NULL, NULL, 'demo', '1', NULL, 1, 1, 1, 'fe27f28b007245e3af5266180d04f2c5', NULL, NULL, 'admin', '2020-05-25 15:51:32.494', 'normal');
INSERT INTO "base"."onl_cgform_head" VALUES ('4028e446724ad0b901724ae0f5e30001', 'test_shoptype_tree$1', 1, 4, '商品分类', 'Y', 'N', 'Y', 'Y', NULL, 'UUID', 'single', NULL, NULL, NULL, 'pid', 'has_child', 'type_name', 'temp', '1', NULL, 1, 1, 1, '997ee931515a4620bc30a9c1246429a9', NULL, NULL, 'admin', '2020-05-25 16:09:16.574', 'normal');

-- ----------------------------
-- Table structure for onl_cgform_index
-- ----------------------------
DROP TABLE IF EXISTS "base"."onl_cgform_index";
CREATE TABLE "base"."onl_cgform_index" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "cgform_head_id" varchar(32) COLLATE "pg_catalog"."default",
  "index_name" varchar(100) COLLATE "pg_catalog"."default",
  "index_field" varchar(500) COLLATE "pg_catalog"."default",
  "index_type" varchar(32) COLLATE "pg_catalog"."default",
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "is_db_synch" varchar(2) COLLATE "pg_catalog"."default",
  "del_flag" int4
)
;
COMMENT ON COLUMN "base"."onl_cgform_index"."id" IS '主键';
COMMENT ON COLUMN "base"."onl_cgform_index"."cgform_head_id" IS '主表id';
COMMENT ON COLUMN "base"."onl_cgform_index"."index_name" IS '索引名称';
COMMENT ON COLUMN "base"."onl_cgform_index"."index_field" IS '索引栏位';
COMMENT ON COLUMN "base"."onl_cgform_index"."index_type" IS '索引类型';
COMMENT ON COLUMN "base"."onl_cgform_index"."create_by" IS '创建人登录名称';
COMMENT ON COLUMN "base"."onl_cgform_index"."create_time" IS '创建日期';
COMMENT ON COLUMN "base"."onl_cgform_index"."update_by" IS '更新人登录名称';
COMMENT ON COLUMN "base"."onl_cgform_index"."update_time" IS '更新日期';
COMMENT ON COLUMN "base"."onl_cgform_index"."is_db_synch" IS '是否同步数据库 N未同步 Y已同步';
COMMENT ON COLUMN "base"."onl_cgform_index"."del_flag" IS '是否删除 0未删除 1删除';

-- ----------------------------
-- Records of onl_cgform_index
-- ----------------------------

-- ----------------------------
-- Table structure for onl_cgreport_head
-- ----------------------------
DROP TABLE IF EXISTS "base"."onl_cgreport_head";
CREATE TABLE "base"."onl_cgreport_head" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "cgr_sql" varchar(1000) COLLATE "pg_catalog"."default" NOT NULL,
  "return_val_field" varchar(100) COLLATE "pg_catalog"."default",
  "return_txt_field" varchar(100) COLLATE "pg_catalog"."default",
  "return_type" varchar(2) COLLATE "pg_catalog"."default",
  "db_source" varchar(100) COLLATE "pg_catalog"."default",
  "content" varchar(1000) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "create_by" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."onl_cgreport_head"."code" IS '报表编码';
COMMENT ON COLUMN "base"."onl_cgreport_head"."name" IS '报表名字';
COMMENT ON COLUMN "base"."onl_cgreport_head"."cgr_sql" IS '报表SQL';
COMMENT ON COLUMN "base"."onl_cgreport_head"."return_val_field" IS '返回值字段';
COMMENT ON COLUMN "base"."onl_cgreport_head"."return_txt_field" IS '返回文本字段';
COMMENT ON COLUMN "base"."onl_cgreport_head"."return_type" IS '返回类型，单选或多选';
COMMENT ON COLUMN "base"."onl_cgreport_head"."db_source" IS '动态数据源';
COMMENT ON COLUMN "base"."onl_cgreport_head"."content" IS '描述';
COMMENT ON COLUMN "base"."onl_cgreport_head"."update_time" IS '修改时间';
COMMENT ON COLUMN "base"."onl_cgreport_head"."update_by" IS '修改人id';
COMMENT ON COLUMN "base"."onl_cgreport_head"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."onl_cgreport_head"."create_by" IS '创建人id';

-- ----------------------------
-- Records of onl_cgreport_head
-- ----------------------------
INSERT INTO "base"."onl_cgreport_head" VALUES ('1256627801873821698', 'report002', '统计登录每日登录次数', 'select DATE_FORMAT(create_time,  ''%Y-%m-%d'') as date,count(*) as num from sys_log group by DATE_FORMAT(create_time, ''%Y-%m-%d'')', NULL, NULL, '1', NULL, NULL, NULL, NULL, '2020-05-03 00:53:10', 'admin');
INSERT INTO "base"."onl_cgreport_head" VALUES ('6c7f59741c814347905a938f06ee003c', 'report_user', '统计在线用户', 'select * from sys_user', NULL, NULL, '1', '', NULL, '2020-05-03 01:07:13', 'admin', '2019-03-25 11:20:45', 'admin');
INSERT INTO "base"."onl_cgreport_head" VALUES ('87b55a515d3441b6b98e48e5b35474a6', 'demo', 'Report Demo', 'select * from demo', NULL, NULL, '1', '', NULL, '2020-05-03 01:14:35', 'admin', '2019-03-12 11:25:16', 'admin');

-- ----------------------------
-- Table structure for onl_cgreport_item
-- ----------------------------
DROP TABLE IF EXISTS "base"."onl_cgreport_item";
CREATE TABLE "base"."onl_cgreport_item" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "cgrhead_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "field_name" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "field_txt" varchar(300) COLLATE "pg_catalog"."default",
  "field_width" int4,
  "field_type" varchar(10) COLLATE "pg_catalog"."default",
  "search_mode" varchar(10) COLLATE "pg_catalog"."default",
  "is_order" int4,
  "is_search" int4,
  "dict_code" varchar(500) COLLATE "pg_catalog"."default",
  "field_href" varchar(120) COLLATE "pg_catalog"."default",
  "is_show" int4,
  "order_num" int4,
  "replace_val" varchar(200) COLLATE "pg_catalog"."default",
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "base"."onl_cgreport_item"."cgrhead_id" IS '报表ID';
COMMENT ON COLUMN "base"."onl_cgreport_item"."field_name" IS '字段名字';
COMMENT ON COLUMN "base"."onl_cgreport_item"."field_txt" IS '字段文本';
COMMENT ON COLUMN "base"."onl_cgreport_item"."field_type" IS '字段类型';
COMMENT ON COLUMN "base"."onl_cgreport_item"."search_mode" IS '查询模式';
COMMENT ON COLUMN "base"."onl_cgreport_item"."is_order" IS '是否排序  0否,1是';
COMMENT ON COLUMN "base"."onl_cgreport_item"."is_search" IS '是否查询  0否,1是';
COMMENT ON COLUMN "base"."onl_cgreport_item"."dict_code" IS '字典CODE';
COMMENT ON COLUMN "base"."onl_cgreport_item"."field_href" IS '字段跳转URL';
COMMENT ON COLUMN "base"."onl_cgreport_item"."is_show" IS '是否显示  0否,1显示';
COMMENT ON COLUMN "base"."onl_cgreport_item"."order_num" IS '排序';
COMMENT ON COLUMN "base"."onl_cgreport_item"."replace_val" IS '取值表达式';
COMMENT ON COLUMN "base"."onl_cgreport_item"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."onl_cgreport_item"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."onl_cgreport_item"."update_by" IS '修改人';
COMMENT ON COLUMN "base"."onl_cgreport_item"."update_time" IS '修改时间';

-- ----------------------------
-- Records of onl_cgreport_item
-- ----------------------------
INSERT INTO "base"."onl_cgreport_item" VALUES ('1256627802020622337', '1256627801873821698', 'date', '日期', NULL, 'String', NULL, 0, 0, '', '', 1, 1, '', 'admin', '2020-05-03 00:53:10', NULL, NULL);
INSERT INTO "base"."onl_cgreport_item" VALUES ('1256627802075148289', '1256627801873821698', 'num', '登录次数', NULL, 'String', NULL, 0, 0, '', '', 1, 2, '', 'admin', '2020-05-03 00:53:10', NULL, NULL);
INSERT INTO "base"."onl_cgreport_item" VALUES ('15884396588465896672', '87b55a515d3441b6b98e48e5b35474a6', 'id', 'ID', NULL, 'String', NULL, 0, 0, '', '', 0, 1, '', 'admin', '2020-05-03 01:14:35', NULL, NULL);
INSERT INTO "base"."onl_cgreport_item" VALUES ('1740bb02519db90c44cb2cba8b755136', '6c7f59741c814347905a938f06ee003c', 'realname', '用户名称', NULL, 'String', NULL, 0, 0, '', '', 1, 1, '', 'admin', '2020-05-03 01:07:13', NULL, NULL);
INSERT INTO "base"."onl_cgreport_item" VALUES ('1b181e6d2813bcb263adc39737f9df46', '87b55a515d3441b6b98e48e5b35474a6', 'name', '用户名', NULL, 'String', 'single', 0, 1, '', '', 1, 2, '', 'admin', '2020-05-03 01:14:35', NULL, NULL);
INSERT INTO "base"."onl_cgreport_item" VALUES ('61ef5b323134938fdd07ad5e3ea16cd3', '87b55a515d3441b6b98e48e5b35474a6', 'key_word', '关键词', NULL, 'String', 'single', 0, 1, '', '', 1, 3, '', 'admin', '2020-05-03 01:14:35', NULL, NULL);
INSERT INTO "base"."onl_cgreport_item" VALUES ('627768efd9ba2c41e905579048f21000', '6c7f59741c814347905a938f06ee003c', 'username', '用户账号', NULL, 'String', 'single', 0, 1, '', '', 1, 2, '', 'admin', '2020-05-03 01:07:13', NULL, NULL);
INSERT INTO "base"."onl_cgreport_item" VALUES ('8bb087a9aa2000bcae17a1b3f5768435', '6c7f59741c814347905a938f06ee003c', 'sex', '性别', NULL, 'String', 'single', 0, 1, 'sex', '', 1, 3, '', 'admin', '2020-05-03 01:07:13', NULL, NULL);
INSERT INTO "base"."onl_cgreport_item" VALUES ('90d4fa57d301801abb26a9b86b6b94c4', '6c7f59741c814347905a938f06ee003c', 'birthday', '生日', NULL, 'Date', 'single', 0, 0, '', '', 1, 4, '', 'admin', '2020-05-03 01:07:13', NULL, NULL);
INSERT INTO "base"."onl_cgreport_item" VALUES ('a4ac355f07a05218854e5f23e2930163', '6c7f59741c814347905a938f06ee003c', 'avatar', '头像', NULL, 'String', NULL, 0, 0, '', '', 0, 5, '', 'admin', '2020-05-03 01:07:13', NULL, NULL);
INSERT INTO "base"."onl_cgreport_item" VALUES ('d6e86b5ffd096ddcc445c0f320a45004', '6c7f59741c814347905a938f06ee003c', 'phone', '手机号', NULL, 'String', NULL, 0, 0, '', '', 1, 6, '', 'admin', '2020-05-03 01:07:13', NULL, NULL);
INSERT INTO "base"."onl_cgreport_item" VALUES ('df365cd357699eea96c29763d1dd7f9d', '6c7f59741c814347905a938f06ee003c', 'email', '邮箱', NULL, 'String', NULL, 0, 0, '', '', 1, 7, '', 'admin', '2020-05-03 01:07:13', NULL, NULL);
INSERT INTO "base"."onl_cgreport_item" VALUES ('edf9932912b81ad01dd557d3d593a559', '87b55a515d3441b6b98e48e5b35474a6', 'age', '年龄', NULL, 'String', NULL, 0, 0, '', '', 1, 4, '', 'admin', '2020-05-03 01:14:35', NULL, NULL);
INSERT INTO "base"."onl_cgreport_item" VALUES ('f985883e509a6faaaf62ca07fd24a73c', '87b55a515d3441b6b98e48e5b35474a6', 'birthday', '生日', NULL, 'Date', 'single', 0, 1, '', '', 1, 5, '', 'admin', '2020-05-03 01:14:35', NULL, NULL);
INSERT INTO "base"."onl_cgreport_item" VALUES ('fce83e4258de3e2f114ab3116397670c', '87b55a515d3441b6b98e48e5b35474a6', 'punch_time', '发布时间', NULL, 'String', NULL, 0, 0, '', '', 1, 6, '', 'admin', '2020-05-03 01:14:35', NULL, NULL);

-- ----------------------------
-- Table structure for onl_cgreport_param
-- ----------------------------
DROP TABLE IF EXISTS "base"."onl_cgreport_param";
CREATE TABLE "base"."onl_cgreport_param" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "cgrhead_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "param_name" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "param_txt" varchar(32) COLLATE "pg_catalog"."default",
  "param_value" varchar(32) COLLATE "pg_catalog"."default",
  "order_num" int4,
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "base"."onl_cgreport_param"."cgrhead_id" IS '动态报表ID';
COMMENT ON COLUMN "base"."onl_cgreport_param"."param_name" IS '参数字段';
COMMENT ON COLUMN "base"."onl_cgreport_param"."param_txt" IS '参数文本';
COMMENT ON COLUMN "base"."onl_cgreport_param"."param_value" IS '参数默认值';
COMMENT ON COLUMN "base"."onl_cgreport_param"."order_num" IS '排序';
COMMENT ON COLUMN "base"."onl_cgreport_param"."create_by" IS '创建人登录名称';
COMMENT ON COLUMN "base"."onl_cgreport_param"."create_time" IS '创建日期';
COMMENT ON COLUMN "base"."onl_cgreport_param"."update_by" IS '更新人登录名称';
COMMENT ON COLUMN "base"."onl_cgreport_param"."update_time" IS '更新日期';

-- ----------------------------
-- Records of onl_cgreport_param
-- ----------------------------

-- ----------------------------
-- Table structure for oss_file
-- ----------------------------
DROP TABLE IF EXISTS "base"."oss_file";
CREATE TABLE "base"."oss_file" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "file_name" varchar(255) COLLATE "pg_catalog"."default",
  "url" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "base"."oss_file"."id" IS '主键id';
COMMENT ON COLUMN "base"."oss_file"."file_name" IS '文件名称';
COMMENT ON COLUMN "base"."oss_file"."url" IS '文件地址';
COMMENT ON COLUMN "base"."oss_file"."create_by" IS '创建人登录名称';
COMMENT ON COLUMN "base"."oss_file"."create_time" IS '创建日期';
COMMENT ON COLUMN "base"."oss_file"."update_by" IS '更新人登录名称';
COMMENT ON COLUMN "base"."oss_file"."update_time" IS '更新日期';
COMMENT ON TABLE "base"."oss_file" IS 'Oss File';

-- ----------------------------
-- Records of oss_file
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS "base"."qrtz_blob_triggers";
CREATE TABLE "base"."qrtz_blob_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "blob_data" bytea
)
;
COMMENT ON TABLE "base"."qrtz_blob_triggers" IS 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE';

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS "base"."qrtz_calendars";
CREATE TABLE "base"."qrtz_calendars" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "calendar_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "calendar" bytea NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS "base"."qrtz_cron_triggers";
CREATE TABLE "base"."qrtz_cron_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "cron_expression" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "time_zone_id" varchar(80) COLLATE "pg_catalog"."default"
)
;
COMMENT ON TABLE "base"."qrtz_cron_triggers" IS 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE';

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO "base"."qrtz_cron_triggers" VALUES ('MyScheduler', 'org.jeecg.modules.message.job.SendMsgJob', 'DEFAULT', '0/50 * * * * ? *', 'Asia/Shanghai');
INSERT INTO "base"."qrtz_cron_triggers" VALUES ('MyScheduler', 'org.jeecg.modules.quartz.job.SampleJob', 'DEFAULT', '0/1 * * * * ?', 'Asia/Shanghai');
INSERT INTO "base"."qrtz_cron_triggers" VALUES ('MyScheduler', 'org.jeecg.modules.quartz.job.SampleParamJob', 'DEFAULT', '0/1 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS "base"."qrtz_fired_triggers";
CREATE TABLE "base"."qrtz_fired_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "entry_id" varchar(95) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "instance_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "fired_time" int8 NOT NULL,
  "sched_time" int8 NOT NULL,
  "priority" int4 NOT NULL,
  "state" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default",
  "job_group" varchar(200) COLLATE "pg_catalog"."default",
  "is_nonconcurrent" varchar(1) COLLATE "pg_catalog"."default",
  "requests_recovery" varchar(1) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS "base"."qrtz_job_details";
CREATE TABLE "base"."qrtz_job_details" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "job_class_name" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "is_durable" varchar(1) COLLATE "pg_catalog"."default" NOT NULL,
  "is_nonconcurrent" varchar(1) COLLATE "pg_catalog"."default" NOT NULL,
  "is_update_data" varchar(1) COLLATE "pg_catalog"."default" NOT NULL,
  "requests_recovery" varchar(1) COLLATE "pg_catalog"."default" NOT NULL,
  "job_data" bytea
)
;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO "base"."qrtz_job_details" VALUES ('MyScheduler', 'org.jeecg.modules.message.job.SendMsgJob', 'DEFAULT', NULL, 'org.jeecg.modules.message.job.SendMsgJob', '0', '0', '0', '0', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\011parameterpx\\000');
INSERT INTO "base"."qrtz_job_details" VALUES ('MyScheduler', 'org.jeecg.modules.quartz.job.SampleJob', 'DEFAULT', NULL, 'org.jeecg.modules.quartz.job.SampleJob', '0', '0', '0', '0', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\011parameterpx\\000');
INSERT INTO "base"."qrtz_job_details" VALUES ('MyScheduler', 'org.jeecg.modules.quartz.job.SampleParamJob', 'DEFAULT', NULL, 'org.jeecg.modules.quartz.job.SampleParamJob', '0', '0', '0', '0', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\011parametert\\000\\005scottx\\000');

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS "base"."qrtz_locks";
CREATE TABLE "base"."qrtz_locks" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "lock_name" varchar(40) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO "base"."qrtz_locks" VALUES ('MyScheduler', 'STATE_ACCESS');
INSERT INTO "base"."qrtz_locks" VALUES ('MyScheduler', 'TRIGGER_ACCESS');
INSERT INTO "base"."qrtz_locks" VALUES ('quartzScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS "base"."qrtz_paused_trigger_grps";
CREATE TABLE "base"."qrtz_paused_trigger_grps" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS "base"."qrtz_scheduler_state";
CREATE TABLE "base"."qrtz_scheduler_state" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "instance_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "last_checkin_time" int8 NOT NULL,
  "checkin_interval" int8 NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO "base"."qrtz_scheduler_state" VALUES ('MyScheduler', 'SC-2017120513291590456603159', 1590475992311, 10000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS "base"."qrtz_simple_triggers";
CREATE TABLE "base"."qrtz_simple_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "repeat_count" int8 NOT NULL,
  "repeat_interval" int8 NOT NULL,
  "times_triggered" int8 NOT NULL
)
;
COMMENT ON TABLE "base"."qrtz_simple_triggers" IS 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE';

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS "base"."qrtz_simprop_triggers";
CREATE TABLE "base"."qrtz_simprop_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "str_prop_1" varchar(512) COLLATE "pg_catalog"."default",
  "str_prop_2" varchar(512) COLLATE "pg_catalog"."default",
  "str_prop_3" varchar(512) COLLATE "pg_catalog"."default",
  "int_prop_1" int4,
  "int_prop_2" int4,
  "long_prop_1" int8,
  "long_prop_2" int8,
  "dec_prop_1" numeric(13,4),
  "dec_prop_2" numeric(13,4),
  "bool_prop_1" varchar(1) COLLATE "pg_catalog"."default",
  "bool_prop_2" varchar(1) COLLATE "pg_catalog"."default"
)
;
COMMENT ON TABLE "base"."qrtz_simprop_triggers" IS 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE';

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS "base"."qrtz_triggers";
CREATE TABLE "base"."qrtz_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "next_fire_time" int8,
  "prev_fire_time" int8,
  "priority" int4,
  "trigger_state" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_type" varchar(8) COLLATE "pg_catalog"."default" NOT NULL,
  "start_time" int8 NOT NULL,
  "end_time" int8,
  "calendar_name" varchar(200) COLLATE "pg_catalog"."default",
  "misfire_instr" int2,
  "job_data" bytea
)
;
COMMENT ON TABLE "base"."qrtz_triggers" IS 'InnoDB free: 504832 kB; (`SCHED_NAME` `JOB_NAME` `JOB_GROUP`';

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO "base"."qrtz_triggers" VALUES ('MyScheduler', 'org.jeecg.modules.message.job.SendMsgJob', 'DEFAULT', 'org.jeecg.modules.message.job.SendMsgJob', 'DEFAULT', NULL, 1588405730000, 1588405680000, 5, 'PAUSED', 'CRON', 1588405284000, 0, NULL, 0, E'\\\\x');
INSERT INTO "base"."qrtz_triggers" VALUES ('MyScheduler', 'org.jeecg.modules.quartz.job.SampleJob', 'DEFAULT', 'org.jeecg.modules.quartz.job.SampleJob', 'DEFAULT', NULL, 1588405730000, 1588405729000, 5, 'PAUSED', 'CRON', 1588405237000, 0, NULL, 0, E'\\\\x');
INSERT INTO "base"."qrtz_triggers" VALUES ('MyScheduler', 'org.jeecg.modules.quartz.job.SampleParamJob', 'DEFAULT', 'org.jeecg.modules.quartz.job.SampleParamJob', 'DEFAULT', NULL, 1588405236000, 1588405235000, 5, 'PAUSED', 'CRON', 1588405221000, 0, NULL, 0, E'\\\\x');

-- ----------------------------
-- Table structure for sys_announcement
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_announcement";
CREATE TABLE "base"."sys_announcement" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "titile" varchar(100) COLLATE "pg_catalog"."default",
  "msg_content" text COLLATE "pg_catalog"."default",
  "start_time" timestamp(6),
  "end_time" timestamp(6),
  "sender" varchar(100) COLLATE "pg_catalog"."default",
  "priority" varchar(255) COLLATE "pg_catalog"."default",
  "msg_category" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "msg_type" varchar(10) COLLATE "pg_catalog"."default",
  "send_status" varchar(10) COLLATE "pg_catalog"."default",
  "send_time" timestamp(6),
  "cancel_time" timestamp(6),
  "del_flag" varchar(1) COLLATE "pg_catalog"."default",
  "bus_type" varchar(20) COLLATE "pg_catalog"."default",
  "bus_id" varchar(50) COLLATE "pg_catalog"."default",
  "open_type" varchar(20) COLLATE "pg_catalog"."default",
  "open_page" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "user_ids" text COLLATE "pg_catalog"."default",
  "msg_abstract" text COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."sys_announcement"."titile" IS '标题';
COMMENT ON COLUMN "base"."sys_announcement"."msg_content" IS '内容';
COMMENT ON COLUMN "base"."sys_announcement"."start_time" IS '开始时间';
COMMENT ON COLUMN "base"."sys_announcement"."end_time" IS '结束时间';
COMMENT ON COLUMN "base"."sys_announcement"."sender" IS '发布人';
COMMENT ON COLUMN "base"."sys_announcement"."priority" IS '优先级（L低，M中，H高）';
COMMENT ON COLUMN "base"."sys_announcement"."msg_category" IS '消息类型1:通知公告2:系统消息';
COMMENT ON COLUMN "base"."sys_announcement"."msg_type" IS '通告对象类型（USER:指定用户，ALL:全体用户）';
COMMENT ON COLUMN "base"."sys_announcement"."send_status" IS '发布状态（0未发布，1已发布，2已撤销）';
COMMENT ON COLUMN "base"."sys_announcement"."send_time" IS '发布时间';
COMMENT ON COLUMN "base"."sys_announcement"."cancel_time" IS '撤销时间';
COMMENT ON COLUMN "base"."sys_announcement"."del_flag" IS '删除状态（0，正常，1已删除）';
COMMENT ON COLUMN "base"."sys_announcement"."bus_type" IS '业务类型(email:邮件 bpm:流程)';
COMMENT ON COLUMN "base"."sys_announcement"."bus_id" IS '业务id';
COMMENT ON COLUMN "base"."sys_announcement"."open_type" IS '打开方式(组件：component 路由：url)';
COMMENT ON COLUMN "base"."sys_announcement"."open_page" IS '组件/路由 地址';
COMMENT ON COLUMN "base"."sys_announcement"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."sys_announcement"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."sys_announcement"."update_by" IS '更新人';
COMMENT ON COLUMN "base"."sys_announcement"."update_time" IS '更新时间';
COMMENT ON COLUMN "base"."sys_announcement"."user_ids" IS '指定用户';
COMMENT ON COLUMN "base"."sys_announcement"."msg_abstract" IS '摘要';
COMMENT ON TABLE "base"."sys_announcement" IS '系统通告表';

-- ----------------------------
-- Records of sys_announcement
-- ----------------------------
INSERT INTO "base"."sys_announcement" VALUES ('1256486817286418434', '放假通知', '<p>放假通知</p>', '2020-05-02 15:32:38', '2020-05-30 15:32:40', 'admin', 'M', '1', 'USER', '1', '2020-05-02 15:32:59', NULL, '0', NULL, NULL, NULL, NULL, 'admin', '2020-05-02 15:32:56', 'admin', '2020-05-02 15:32:59', 'e9ca23d68d884d4ebb19d07889727dae,a75d45a015c44384a04449ee80dc3503,', '放假通知');

-- ----------------------------
-- Table structure for sys_announcement_send
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_announcement_send";
CREATE TABLE "base"."sys_announcement_send" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "annt_id" varchar(32) COLLATE "pg_catalog"."default",
  "user_id" varchar(32) COLLATE "pg_catalog"."default",
  "read_flag" varchar(10) COLLATE "pg_catalog"."default",
  "read_time" timestamp(6),
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "base"."sys_announcement_send"."annt_id" IS '通告ID';
COMMENT ON COLUMN "base"."sys_announcement_send"."user_id" IS '用户id';
COMMENT ON COLUMN "base"."sys_announcement_send"."read_flag" IS '阅读状态（0未读，1已读）';
COMMENT ON COLUMN "base"."sys_announcement_send"."read_time" IS '阅读时间';
COMMENT ON COLUMN "base"."sys_announcement_send"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."sys_announcement_send"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."sys_announcement_send"."update_by" IS '更新人';
COMMENT ON COLUMN "base"."sys_announcement_send"."update_time" IS '更新时间';
COMMENT ON TABLE "base"."sys_announcement_send" IS '用户通告阅读标记表';

-- ----------------------------
-- Records of sys_announcement_send
-- ----------------------------
INSERT INTO "base"."sys_announcement_send" VALUES ('646c0c405ec643d4dc4160db2446f8ff', '93a9060a1c20e4bf98b3f768a02c2ff9', 'e9ca23d68d884d4ebb19d07889727dae', '1', '2019-11-21 16:30:01', 'admin', '2019-05-17 11:50:56', 'admin', '2019-11-21 16:30:01');

-- ----------------------------
-- Table structure for sys_category
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_category";
CREATE TABLE "base"."sys_category" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "pid" varchar(36) COLLATE "pg_catalog"."default",
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "code" varchar(100) COLLATE "pg_catalog"."default",
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "sys_org_code" varchar(64) COLLATE "pg_catalog"."default",
  "has_child" varchar(3) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."sys_category"."pid" IS '父级节点';
COMMENT ON COLUMN "base"."sys_category"."name" IS '类型名称';
COMMENT ON COLUMN "base"."sys_category"."code" IS '类型编码';
COMMENT ON COLUMN "base"."sys_category"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."sys_category"."create_time" IS '创建日期';
COMMENT ON COLUMN "base"."sys_category"."update_by" IS '更新人';
COMMENT ON COLUMN "base"."sys_category"."update_time" IS '更新日期';
COMMENT ON COLUMN "base"."sys_category"."sys_org_code" IS '所属部门';
COMMENT ON COLUMN "base"."sys_category"."has_child" IS '是否有子节点';

-- ----------------------------
-- Records of sys_category
-- ----------------------------
INSERT INTO "base"."sys_category" VALUES ('1183693424827564034', '0', '物料树', 'B02', 'admin', '2019-10-14 18:37:59', 'admin', '2019-10-14 18:38:15', 'A01', '1');
INSERT INTO "base"."sys_category" VALUES ('1183693491043041282', '1183693424827564034', '上衣', 'B02A01', 'admin', '2019-10-14 18:38:15', 'admin', '2019-10-14 18:38:43', 'A01', '1');
INSERT INTO "base"."sys_category" VALUES ('1183693534173069314', '1183693424827564034', '裤子', 'B02A02', 'admin', '2019-10-14 18:38:25', NULL, NULL, 'A01', NULL);
INSERT INTO "base"."sys_category" VALUES ('1183693610534567937', '1183693491043041282', '秋衣', 'B02A01A01', 'admin', '2019-10-14 18:38:43', NULL, NULL, 'A01', NULL);
INSERT INTO "base"."sys_category" VALUES ('1183693700254924802', '1183693491043041282', '兵装', 'B02A01A02', 'admin', '2019-10-14 18:39:05', NULL, NULL, 'A01', NULL);
INSERT INTO "base"."sys_category" VALUES ('1183693773974011906', '1183693491043041282', '女装', 'B02A01A03', 'admin', '2019-10-14 18:39:22', NULL, NULL, 'A01', NULL);
INSERT INTO "base"."sys_category" VALUES ('1185039122143719425', '0', '电脑产品', 'A01', 'admin', '2019-10-18 11:45:18', 'admin', '2019-10-18 11:45:31', 'A01', '1');
INSERT INTO "base"."sys_category" VALUES ('1185039176799694850', '1185039122143719425', 'thinkpad', 'A01A01', 'admin', '2019-10-18 11:45:31', NULL, NULL, 'A01', NULL);
INSERT INTO "base"."sys_category" VALUES ('1185039255115739138', '1185039122143719425', 'mackbook', 'A01A02', 'admin', '2019-10-18 11:45:50', NULL, NULL, 'A01', NULL);
INSERT INTO "base"."sys_category" VALUES ('1185039299051073537', '1185039122143719425', '华为电脑', 'A01A03', 'admin', '2019-10-18 11:46:01', NULL, NULL, 'A01', NULL);
INSERT INTO "base"."sys_category" VALUES ('1230769196661510146', '0', '省', NULL, 'admin', '2020-02-21 16:20:16', 'admin', '2020-02-21 16:20:31', 'A01A03', '1');
INSERT INTO "base"."sys_category" VALUES ('1230769253267836929', '1230769196661510146', '安徽省', NULL, 'admin', '2020-02-21 16:20:31', 'admin', '2020-02-21 16:20:53', 'A01A03', '1');
INSERT INTO "base"."sys_category" VALUES ('1230769290609725441', '1230769196661510146', '山东省', NULL, 'admin', '2020-02-21 16:20:40', 'admin', '2020-02-21 16:21:23', 'A01A03', '1');
INSERT INTO "base"."sys_category" VALUES ('1230769347157331969', '1230769253267836929', '合肥市', NULL, 'admin', '2020-02-21 16:20:53', 'admin', '2020-02-21 16:21:08', 'A01A03', '1');
INSERT INTO "base"."sys_category" VALUES ('1230769407907631106', '1230769347157331969', '包河区', NULL, 'admin', '2020-02-21 16:21:08', NULL, NULL, 'A01A03', NULL);
INSERT INTO "base"."sys_category" VALUES ('1230769470889299970', '1230769290609725441', '济南市', NULL, 'admin', '2020-02-21 16:21:23', 'admin', '2020-02-21 16:21:41', 'A01A03', '1');
INSERT INTO "base"."sys_category" VALUES ('1230769547519234050', '1230769470889299970', 'A区', NULL, 'admin', '2020-02-21 16:21:41', NULL, NULL, 'A01A03', NULL);
INSERT INTO "base"."sys_category" VALUES ('1230769620021972993', '1230769470889299970', 'B区', NULL, 'admin', '2020-02-21 16:21:58', NULL, NULL, 'A01A03', NULL);
INSERT INTO "base"."sys_category" VALUES ('1230769769930592257', '1230769253267836929', '淮南市', NULL, 'admin', '2020-02-21 16:22:34', 'admin', '2020-02-21 16:22:54', 'A01A03', '1');
INSERT INTO "base"."sys_category" VALUES ('1230769855347593217', '1230769769930592257', 'C区', NULL, 'admin', '2020-02-21 16:22:54', NULL, NULL, 'A01A03', NULL);
INSERT INTO "base"."sys_category" VALUES ('22a50b413c5e1ef661fb8aea9469cf52', 'e9ded10fd33e5753face506f4f1564b5', 'MacBook', 'B01-2-1', 'admin', '2019-06-10 15:43:13', NULL, NULL, 'A01', NULL);
INSERT INTO "base"."sys_category" VALUES ('5c8f68845e57f68ab93a2c8d82d26ae1', '0', '笔记本', 'B01', 'admin', '2019-06-10 15:34:11', 'admin', '2019-06-10 15:34:24', 'A01', '1');
INSERT INTO "base"."sys_category" VALUES ('937fd2e9aa13b8bab1da1ca36d3fd344', 'e9ded10fd33e5753face506f4f1564b5', '台式机', 'B02-2-2', 'admin', '2019-06-10 15:43:32', 'admin', '2019-08-21 12:01:59', 'A01', NULL);
INSERT INTO "base"."sys_category" VALUES ('e9ded10fd33e5753face506f4f1564b5', '5c8f68845e57f68ab93a2c8d82d26ae1', '苹果电脑', 'B01-2', 'admin', '2019-06-10 15:41:14', 'admin', '2019-06-10 15:43:13', 'A01', '1');
INSERT INTO "base"."sys_category" VALUES ('f39a06bf9f390ba4a53d11bc4e0018d7', '5c8f68845e57f68ab93a2c8d82d26ae1', '华为', 'B01-1', 'admin', '2019-06-10 15:34:24', 'admin', '2019-08-21 12:01:56', 'A01', NULL);

-- ----------------------------
-- Table structure for sys_check_rule
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_check_rule";
CREATE TABLE "base"."sys_check_rule" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "rule_name" varchar(100) COLLATE "pg_catalog"."default",
  "rule_code" varchar(100) COLLATE "pg_catalog"."default",
  "rule_json" varchar(1024) COLLATE "pg_catalog"."default",
  "rule_description" varchar(200) COLLATE "pg_catalog"."default",
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6)
)
;
COMMENT ON COLUMN "base"."sys_check_rule"."id" IS '主键id';
COMMENT ON COLUMN "base"."sys_check_rule"."rule_name" IS '规则名称';
COMMENT ON COLUMN "base"."sys_check_rule"."rule_code" IS '规则Code';
COMMENT ON COLUMN "base"."sys_check_rule"."rule_json" IS '规则JSON';
COMMENT ON COLUMN "base"."sys_check_rule"."rule_description" IS '规则描述';
COMMENT ON COLUMN "base"."sys_check_rule"."update_by" IS '更新人';
COMMENT ON COLUMN "base"."sys_check_rule"."update_time" IS '更新时间';
COMMENT ON COLUMN "base"."sys_check_rule"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."sys_check_rule"."create_time" IS '创建时间';

-- ----------------------------
-- Records of sys_check_rule
-- ----------------------------
INSERT INTO "base"."sys_check_rule" VALUES ('1224980593992388610', '通用编码规则', 'common', '[{"digits":"1","pattern":"^[a-z|A-Z]$","message":"第一位只能是字母"},{"digits":"*","pattern":"^[0-9|a-z|A-Z|_]{0,}$","message":"只能填写数字、大小写字母、下划线"},{"digits":"*","pattern":"^.{3,}$","message":"最少输入3位数"},{"digits":"*","pattern":"^.{3,12}$","message":"最多输入12位数"}]', '规则：1、首位只能是字母；2、只能填写数字、大小写字母、下划线；3、最少3位数，最多12位数。', 'admin', '2020-02-07 11:25:48', 'admin', '2020-02-05 16:58:27');
INSERT INTO "base"."sys_check_rule" VALUES ('1225001845524004866', '负责的功能测试', 'test', '[{"digits":"*","pattern":"^.{3,12}$","message":"只能输入3-12位字符"},{"digits":"3","pattern":"^\\d{3}$","message":"前3位必须是数字"},{"digits":"*","pattern":"^[^pP]*$","message":"不能输入P"},{"digits":"4","pattern":"^@{4}$","message":"第4-7位必须都为 @"},{"digits":"2","pattern":"^#=$","message":"第8-9位必须是 #="},{"digits":"1","pattern":"^O$","message":"第10位必须为大写的O"},{"digits":"*","pattern":"^.*。$","message":"必须以。结尾"}]', '包含长度校验、特殊字符校验等', 'admin', '2020-02-07 11:57:31', 'admin', '2020-02-05 18:22:54');

-- ----------------------------
-- Table structure for sys_data_log
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_data_log";
CREATE TABLE "base"."sys_data_log" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "data_table" varchar(32) COLLATE "pg_catalog"."default",
  "data_id" varchar(32) COLLATE "pg_catalog"."default",
  "data_content" text COLLATE "pg_catalog"."default",
  "data_version" int4
)
;
COMMENT ON COLUMN "base"."sys_data_log"."id" IS 'id';
COMMENT ON COLUMN "base"."sys_data_log"."create_by" IS '创建人登录名称';
COMMENT ON COLUMN "base"."sys_data_log"."create_time" IS '创建日期';
COMMENT ON COLUMN "base"."sys_data_log"."update_by" IS '更新人登录名称';
COMMENT ON COLUMN "base"."sys_data_log"."update_time" IS '更新日期';
COMMENT ON COLUMN "base"."sys_data_log"."data_table" IS '表名';
COMMENT ON COLUMN "base"."sys_data_log"."data_id" IS '数据ID';
COMMENT ON COLUMN "base"."sys_data_log"."data_content" IS '数据内容';
COMMENT ON COLUMN "base"."sys_data_log"."data_version" IS '版本号';

-- ----------------------------
-- Records of sys_data_log
-- ----------------------------
INSERT INTO "base"."sys_data_log" VALUES ('402880f05ab0d198015ab12274bf0006', 'admin', '2017-03-09 11:35:09', NULL, NULL, 'jeecg_demo', '4028ef81550c1a7901550c1cd6e70001', '{"mobilePhone":"","officePhone":"","email":"","createDate":"Jun 23, 2016 12:00:00 PM","sex":"1","depId":"402880e447e99cf10147e9a03b320003","userName":"9001","status":"1","content":"111","id":"4028ef81550c1a7901550c1cd6e70001"}', 3);

-- ----------------------------
-- Table structure for sys_data_source
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_data_source";
CREATE TABLE "base"."sys_data_source" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(100) COLLATE "pg_catalog"."default",
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "remark" varchar(200) COLLATE "pg_catalog"."default",
  "db_type" varchar(10) COLLATE "pg_catalog"."default",
  "db_driver" varchar(100) COLLATE "pg_catalog"."default",
  "db_url" varchar(500) COLLATE "pg_catalog"."default",
  "db_name" varchar(100) COLLATE "pg_catalog"."default",
  "db_username" varchar(100) COLLATE "pg_catalog"."default",
  "db_password" varchar(100) COLLATE "pg_catalog"."default",
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "sys_org_code" varchar(64) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."sys_data_source"."code" IS '数据源编码';
COMMENT ON COLUMN "base"."sys_data_source"."name" IS '数据源名称';
COMMENT ON COLUMN "base"."sys_data_source"."remark" IS '备注';
COMMENT ON COLUMN "base"."sys_data_source"."db_type" IS '数据库类型';
COMMENT ON COLUMN "base"."sys_data_source"."db_driver" IS '驱动类';
COMMENT ON COLUMN "base"."sys_data_source"."db_url" IS '数据源地址';
COMMENT ON COLUMN "base"."sys_data_source"."db_name" IS '数据库名称';
COMMENT ON COLUMN "base"."sys_data_source"."db_username" IS '用户名';
COMMENT ON COLUMN "base"."sys_data_source"."db_password" IS '密码';
COMMENT ON COLUMN "base"."sys_data_source"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."sys_data_source"."create_time" IS '创建日期';
COMMENT ON COLUMN "base"."sys_data_source"."update_by" IS '更新人';
COMMENT ON COLUMN "base"."sys_data_source"."update_time" IS '更新日期';
COMMENT ON COLUMN "base"."sys_data_source"."sys_org_code" IS '所属部门';

-- ----------------------------
-- Records of sys_data_source
-- ----------------------------
INSERT INTO "base"."sys_data_source" VALUES ('1209779538310004737', 'local_mysql', 'MySQL5.7', '本地数据库MySQL5.7', '1', 'com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/jeecg-boot?characterEncoding=UTF-8&useUnicode=true&useSSL=false', 'jeecg-boot', 'root', 'root', 'admin', '2019-12-25 18:14:53', NULL, NULL, 'A01');

-- ----------------------------
-- Table structure for sys_depart
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_depart";
CREATE TABLE "base"."sys_depart" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_id" varchar(32) COLLATE "pg_catalog"."default",
  "depart_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "depart_name_en" varchar(500) COLLATE "pg_catalog"."default",
  "depart_name_abbr" varchar(500) COLLATE "pg_catalog"."default",
  "depart_order" int4,
  "description" varchar(500) COLLATE "pg_catalog"."default",
  "org_category" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "org_type" varchar(10) COLLATE "pg_catalog"."default",
  "org_code" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "mobile" varchar(32) COLLATE "pg_catalog"."default",
  "fax" varchar(32) COLLATE "pg_catalog"."default",
  "address" varchar(100) COLLATE "pg_catalog"."default",
  "memo" varchar(500) COLLATE "pg_catalog"."default",
  "status" varchar(1) COLLATE "pg_catalog"."default",
  "del_flag" varchar(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "base"."sys_depart"."id" IS 'ID';
COMMENT ON COLUMN "base"."sys_depart"."parent_id" IS '父机构ID';
COMMENT ON COLUMN "base"."sys_depart"."depart_name" IS '机构/部门名称';
COMMENT ON COLUMN "base"."sys_depart"."depart_name_en" IS '英文名';
COMMENT ON COLUMN "base"."sys_depart"."depart_name_abbr" IS '缩写';
COMMENT ON COLUMN "base"."sys_depart"."depart_order" IS '排序';
COMMENT ON COLUMN "base"."sys_depart"."description" IS '描述';
COMMENT ON COLUMN "base"."sys_depart"."org_category" IS '机构类别 1组织机构，2岗位';
COMMENT ON COLUMN "base"."sys_depart"."org_type" IS '机构类型 1一级部门 2子部门';
COMMENT ON COLUMN "base"."sys_depart"."org_code" IS '机构编码';
COMMENT ON COLUMN "base"."sys_depart"."mobile" IS '手机号';
COMMENT ON COLUMN "base"."sys_depart"."fax" IS '传真';
COMMENT ON COLUMN "base"."sys_depart"."address" IS '地址';
COMMENT ON COLUMN "base"."sys_depart"."memo" IS '备注';
COMMENT ON COLUMN "base"."sys_depart"."status" IS '状态（1启用，0不启用）';
COMMENT ON COLUMN "base"."sys_depart"."del_flag" IS '删除状态（0，正常，1已删除）';
COMMENT ON COLUMN "base"."sys_depart"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."sys_depart"."create_time" IS '创建日期';
COMMENT ON COLUMN "base"."sys_depart"."update_by" IS '更新人';
COMMENT ON COLUMN "base"."sys_depart"."update_time" IS '更新日期';
COMMENT ON TABLE "base"."sys_depart" IS '组织机构表';

-- ----------------------------
-- Records of sys_depart
-- ----------------------------
INSERT INTO "base"."sys_depart" VALUES ('4f1765520d6346f9bd9c79e2479e5b12', 'c6d7cb4deeac411cb3384b1b31278596', '市场部', NULL, NULL, 0, NULL, '1', '2', 'A01A03', NULL, NULL, NULL, NULL, NULL, '0', 'admin', '2019-02-20 17:15:34', 'admin', '2019-02-26 16:36:18');
INSERT INTO "base"."sys_depart" VALUES ('5159cde220114246b045e574adceafe9', '6d35e179cd814e3299bd588ea7daed3f', '研发部', NULL, NULL, 0, NULL, '1', '2', 'A02A02', NULL, NULL, NULL, NULL, NULL, '0', 'admin', '2019-02-26 16:44:38', 'admin', '2019-03-07 09:36:53');
INSERT INTO "base"."sys_depart" VALUES ('57197590443c44f083d42ae24ef26a2c', 'c6d7cb4deeac411cb3384b1b31278596', '研发部', NULL, NULL, 0, NULL, '1', '2', 'A01A05', NULL, NULL, NULL, NULL, NULL, '0', 'admin', '2019-02-21 16:14:41', 'admin', '2019-03-27 19:05:49');
INSERT INTO "base"."sys_depart" VALUES ('63775228b7b041a99825f79760590b7d', '57197590443c44f083d42ae24ef26a2c', '研发经理', NULL, NULL, 0, NULL, '3', '3', 'A01A05A01', NULL, NULL, NULL, NULL, NULL, '0', 'admin', '2020-05-02 15:29:09', NULL, NULL);
INSERT INTO "base"."sys_depart" VALUES ('67fc001af12a4f9b8458005d3f19934a', 'c6d7cb4deeac411cb3384b1b31278596', '财务部', NULL, NULL, 0, NULL, '1', '2', 'A01A04', NULL, NULL, NULL, NULL, NULL, '0', 'admin', '2019-02-21 16:14:35', 'admin', '2019-02-25 12:49:41');
INSERT INTO "base"."sys_depart" VALUES ('743ba9dbdc114af8953a11022ef3096a', 'f28c6f53abd841ac87ead43afc483433', '财务部', NULL, NULL, 0, NULL, '1', '2', 'A03A01', NULL, NULL, NULL, NULL, NULL, '0', 'admin', '2019-03-22 16:45:43', NULL, NULL);
INSERT INTO "base"."sys_depart" VALUES ('a7d7e77e06c84325a40932163adcdaa6', '6d35e179cd814e3299bd588ea7daed3f', '财务部', NULL, NULL, 0, NULL, '1', '2', 'A02A01', NULL, NULL, NULL, NULL, NULL, '0', 'admin', '2019-02-26 16:36:47', 'admin', '2019-02-26 16:37:25');
INSERT INTO "base"."sys_depart" VALUES ('c6d7cb4deeac411cb3384b1b31278596', '', '云麓', NULL, NULL, 0, NULL, '1', '1', 'A01', NULL, NULL, NULL, NULL, NULL, '0', 'admin', '2019-02-11 14:21:51', 'admin', '2020-05-02 18:21:27');
INSERT INTO "base"."sys_depart" VALUES ('6d35e179cd814e3299bd588ea7daed3f', '', '荒火', NULL, NULL, 0, NULL, '1', '1', 'A02', NULL, NULL, NULL, NULL, NULL, '0', 'admin', '2019-02-26 16:36:39', 'admin', '2020-05-02 18:21:22');

-- ----------------------------
-- Table structure for sys_depart_permission
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_depart_permission";
CREATE TABLE "base"."sys_depart_permission" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "depart_id" varchar(32) COLLATE "pg_catalog"."default",
  "permission_id" varchar(32) COLLATE "pg_catalog"."default",
  "data_rule_ids" varchar(1000) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."sys_depart_permission"."depart_id" IS '部门id';
COMMENT ON COLUMN "base"."sys_depart_permission"."permission_id" IS '权限id';
COMMENT ON COLUMN "base"."sys_depart_permission"."data_rule_ids" IS '数据规则id';
COMMENT ON TABLE "base"."sys_depart_permission" IS '部门权限表';

-- ----------------------------
-- Records of sys_depart_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sys_depart_role
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_depart_role";
CREATE TABLE "base"."sys_depart_role" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "depart_id" varchar(32) COLLATE "pg_catalog"."default",
  "role_name" varchar(200) COLLATE "pg_catalog"."default",
  "role_code" varchar(100) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "base"."sys_depart_role"."depart_id" IS '部门id';
COMMENT ON COLUMN "base"."sys_depart_role"."role_name" IS '部门角色名称';
COMMENT ON COLUMN "base"."sys_depart_role"."role_code" IS '部门角色编码';
COMMENT ON COLUMN "base"."sys_depart_role"."description" IS '描述';
COMMENT ON COLUMN "base"."sys_depart_role"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."sys_depart_role"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."sys_depart_role"."update_by" IS '更新人';
COMMENT ON COLUMN "base"."sys_depart_role"."update_time" IS '更新时间';
COMMENT ON TABLE "base"."sys_depart_role" IS '部门角色表';

-- ----------------------------
-- Records of sys_depart_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_depart_role_permission
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_depart_role_permission";
CREATE TABLE "base"."sys_depart_role_permission" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "depart_id" varchar(32) COLLATE "pg_catalog"."default",
  "role_id" varchar(32) COLLATE "pg_catalog"."default",
  "permission_id" varchar(32) COLLATE "pg_catalog"."default",
  "data_rule_ids" varchar(1000) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."sys_depart_role_permission"."depart_id" IS '部门id';
COMMENT ON COLUMN "base"."sys_depart_role_permission"."role_id" IS '角色id';
COMMENT ON COLUMN "base"."sys_depart_role_permission"."permission_id" IS '权限id';
COMMENT ON TABLE "base"."sys_depart_role_permission" IS '部门角色权限表';

-- ----------------------------
-- Records of sys_depart_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sys_depart_role_user
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_depart_role_user";
CREATE TABLE "base"."sys_depart_role_user" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" varchar(32) COLLATE "pg_catalog"."default",
  "drole_id" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."sys_depart_role_user"."id" IS '主键id';
COMMENT ON COLUMN "base"."sys_depart_role_user"."user_id" IS '用户id';
COMMENT ON COLUMN "base"."sys_depart_role_user"."drole_id" IS '角色id';
COMMENT ON TABLE "base"."sys_depart_role_user" IS '部门角色用户表';

-- ----------------------------
-- Records of sys_depart_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_dict";
CREATE TABLE "base"."sys_dict" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "dict_name" varchar(100) COLLATE "pg_catalog"."default",
  "dict_code" varchar(100) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "del_flag" int4,
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "type" int4
)
;
COMMENT ON COLUMN "base"."sys_dict"."dict_name" IS '字典名称';
COMMENT ON COLUMN "base"."sys_dict"."dict_code" IS '字典编码';
COMMENT ON COLUMN "base"."sys_dict"."description" IS '描述';
COMMENT ON COLUMN "base"."sys_dict"."del_flag" IS '删除状态';
COMMENT ON COLUMN "base"."sys_dict"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."sys_dict"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."sys_dict"."update_by" IS '更新人';
COMMENT ON COLUMN "base"."sys_dict"."update_time" IS '更新时间';
COMMENT ON COLUMN "base"."sys_dict"."type" IS '字典类型0为string,1为number';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO "base"."sys_dict" VALUES ('0b5d19e1fce4b2e6647e6b4a17760c14', '通告类型', 'msg_category', '消息类型1:通知公告2:系统消息', 0, 'admin', '2019-04-22 18:01:35', NULL, NULL, 0);
INSERT INTO "base"."sys_dict" VALUES ('1174509082208395266', '职务职级', 'position_rank', '职务表职级字典', 0, 'admin', '2019-09-19 10:22:41', NULL, NULL, 0);
INSERT INTO "base"."sys_dict" VALUES ('1174511106530525185', '机构类型', 'org_category', '机构类型 1公司，2部门 3岗位', 0, 'admin', '2019-09-19 10:30:43', NULL, NULL, 0);
INSERT INTO "base"."sys_dict" VALUES ('1178295274528845826', '表单权限策略', 'form_perms_type', '', 0, 'admin', '2019-09-29 21:07:39', 'admin', '2019-09-29 21:08:26', NULL);
INSERT INTO "base"."sys_dict" VALUES ('1199517671259906049', '紧急程度', 'urgent_level', '日程计划紧急程度', 0, 'admin', '2019-11-27 10:37:53', NULL, NULL, 0);
INSERT INTO "base"."sys_dict" VALUES ('1199518099888414722', '日程计划类型', 'eoa_plan_type', '', 0, 'admin', '2019-11-27 10:39:36', NULL, NULL, 0);
INSERT INTO "base"."sys_dict" VALUES ('1199520177767587841', '分类栏目类型', 'eoa_cms_menu_type', '', 0, 'admin', '2019-11-27 10:47:51', 'admin', '2019-11-27 10:49:35', 0);
INSERT INTO "base"."sys_dict" VALUES ('1199525215290306561', '日程计划状态', 'eoa_plan_status', '', 0, 'admin', '2019-11-27 11:07:52', 'admin', '2019-11-27 11:10:11', 0);
INSERT INTO "base"."sys_dict" VALUES ('1209733563293962241', '数据库类型', 'database_type', '', 0, 'admin', '2019-12-25 15:12:12', NULL, NULL, 0);
INSERT INTO "base"."sys_dict" VALUES ('1232913193820581889', 'Online表单业务分类', 'ol_form_biz_type', '', 0, 'admin', '2020-02-27 14:19:46', 'admin', '2020-02-27 14:20:23', 0);
INSERT INTO "base"."sys_dict" VALUES ('1250687930947620866', '定时任务状态', 'quartz_status', '', 0, 'admin', '2020-04-16 15:30:14', '', NULL, NULL);
INSERT INTO "base"."sys_dict" VALUES ('236e8a4baff0db8c62c00dd95632834f', '同步工作流引擎', 'activiti_sync', '同步工作流引擎', 0, 'admin', '2019-05-15 15:27:33', NULL, NULL, 0);
INSERT INTO "base"."sys_dict" VALUES ('2e02df51611a4b9632828ab7e5338f00', '权限策略', 'perms_type', '权限策略', 0, 'admin', '2019-04-26 18:26:55', NULL, NULL, 0);
INSERT INTO "base"."sys_dict" VALUES ('2f0320997ade5dd147c90130f7218c3e', '推送类别', 'msg_type', '', 0, 'admin', '2019-03-17 21:21:32', 'admin', '2019-03-26 19:57:45', 0);
INSERT INTO "base"."sys_dict" VALUES ('3486f32803bb953e7155dab3513dc68b', '删除状态', 'del_flag', NULL, 0, 'admin', '2019-01-18 21:46:26', 'admin', '2019-03-30 11:17:11', 0);
INSERT INTO "base"."sys_dict" VALUES ('3d9a351be3436fbefb1307d4cfb49bf2', '性别', 'sex', NULL, 0, NULL, '2019-01-04 14:56:32', 'admin', '2019-03-30 11:28:27', 1);
INSERT INTO "base"."sys_dict" VALUES ('4274efc2292239b6f000b153f50823ff', '全局权限策略', 'global_perms_type', '全局权限策略', 0, 'admin', '2019-05-10 17:54:05', NULL, NULL, 0);
INSERT INTO "base"."sys_dict" VALUES ('4c03fca6bf1f0299c381213961566349', 'Online图表展示模板', 'online_graph_display_template', 'Online图表展示模板', 0, 'admin', '2019-04-12 17:28:50', NULL, NULL, 0);
INSERT INTO "base"."sys_dict" VALUES ('4c753b5293304e7a445fd2741b46529d', '字典状态', 'dict_item_status', NULL, 0, 'admin', '2020-06-18 23:18:42', 'admin', '2019-03-30 19:33:52', 1);
INSERT INTO "base"."sys_dict" VALUES ('4d7fec1a7799a436d26d02325eff295e', '优先级', 'priority', '优先级', 0, 'admin', '2019-03-16 17:03:34', 'admin', '2019-04-16 17:39:23', 0);
INSERT INTO "base"."sys_dict" VALUES ('4e4602b3e3686f0911384e188dc7efb4', '条件规则', 'rule_conditions', '', 0, 'admin', '2019-04-01 10:15:03', 'admin', '2019-04-01 10:30:47', 0);
INSERT INTO "base"."sys_dict" VALUES ('4f69be5f507accea8d5df5f11346181a', '发送消息类型', 'msgType', NULL, 0, 'admin', '2019-04-11 14:27:09', NULL, NULL, 0);
INSERT INTO "base"."sys_dict" VALUES ('68168534ff5065a152bfab275c2136f8', '有效无效状态', 'valid_status', '有效无效状态', 0, 'admin', '2020-09-26 19:21:14', 'admin', '2019-04-26 19:21:23', 0);
INSERT INTO "base"."sys_dict" VALUES ('6b78e3f59faec1a4750acff08030a79b', '用户类型', 'user_type', NULL, 0, NULL, '2019-01-04 14:59:01', 'admin', '2019-03-18 23:28:18', 0);
INSERT INTO "base"."sys_dict" VALUES ('72cce0989df68887546746d8f09811aa', 'Online表单类型', 'cgform_table_type', '', 0, 'admin', '2019-01-27 10:13:02', 'admin', '2019-03-30 11:37:36', 0);
INSERT INTO "base"."sys_dict" VALUES ('78bda155fe380b1b3f175f1e88c284c6', '流程状态', 'bpm_status', '流程状态', 0, 'admin', '2019-05-09 16:31:52', NULL, NULL, 0);
INSERT INTO "base"."sys_dict" VALUES ('83bfb33147013cc81640d5fd9eda030c', '日志类型', 'log_type', NULL, 0, 'admin', '2019-03-18 23:22:19', NULL, NULL, 1);
INSERT INTO "base"."sys_dict" VALUES ('845da5006c97754728bf48b6a10f79cc', '状态', 'status', NULL, 0, 'admin', '2019-03-18 21:45:25', 'admin', '2019-03-18 21:58:25', 0);
INSERT INTO "base"."sys_dict" VALUES ('880a895c98afeca9d9ac39f29e67c13e', '操作类型', 'operate_type', '操作类型', 0, 'admin', '2019-07-22 10:54:29', NULL, NULL, 0);
INSERT INTO "base"."sys_dict" VALUES ('8dfe32e2d29ea9430a988b3b558bf233', '发布状态', 'send_status', '发布状态', 0, 'admin', '2019-04-16 17:40:42', NULL, NULL, 0);
INSERT INTO "base"."sys_dict" VALUES ('a7adbcd86c37f7dbc9b66945c82ef9e6', '1是0否', 'yn', '', 0, 'admin', '2019-05-22 19:29:29', NULL, NULL, 0);
INSERT INTO "base"."sys_dict" VALUES ('a9d9942bd0eccb6e89de92d130ec4c4a', '消息发送状态', 'msgSendStatus', NULL, 0, 'admin', '2019-04-12 18:18:17', NULL, NULL, 0);
INSERT INTO "base"."sys_dict" VALUES ('ac2f7c0c5c5775fcea7e2387bcb22f01', '菜单类型', 'menu_type', NULL, 0, 'admin', '2020-12-18 23:24:32', 'admin', '2019-04-01 15:27:06', 1);
INSERT INTO "base"."sys_dict" VALUES ('ad7c65ba97c20a6805d5dcdf13cdaf36', 'onlineT类型', 'ceshi_online', NULL, 0, 'admin', '2019-03-22 16:31:49', 'admin', '2019-03-22 16:34:16', 0);
INSERT INTO "base"."sys_dict" VALUES ('bd1b8bc28e65d6feefefb6f3c79f42fd', 'Online图表数据类型', 'online_graph_data_type', 'Online图表数据类型', 0, 'admin', '2019-04-12 17:24:24', 'admin', '2019-04-12 17:24:57', 0);
INSERT INTO "base"."sys_dict" VALUES ('c36169beb12de8a71c8683ee7c28a503', '部门状态', 'depart_status', NULL, 0, 'admin', '2019-03-18 21:59:51', NULL, NULL, 0);
INSERT INTO "base"."sys_dict" VALUES ('c5a14c75172783d72cbee6ee7f5df5d1', 'Online图表类型', 'online_graph_type', 'Online图表类型', 0, 'admin', '2019-04-12 17:04:06', NULL, NULL, 0);
INSERT INTO "base"."sys_dict" VALUES ('d6e1152968b02d69ff358c75b48a6ee1', '流程类型', 'bpm_process_type', NULL, 0, 'admin', '2021-02-22 19:26:54', 'admin', '2019-03-30 18:14:44', 0);
INSERT INTO "base"."sys_dict" VALUES ('fc6cd58fde2e8481db10d3a1e68ce70c', '用户状态', 'user_status', NULL, 0, 'admin', '2019-03-18 21:57:25', 'admin', '2019-03-18 23:11:58', 1);

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_dict_item";
CREATE TABLE "base"."sys_dict_item" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "dict_id" varchar(32) COLLATE "pg_catalog"."default",
  "item_text" varchar(100) COLLATE "pg_catalog"."default",
  "item_value" varchar(100) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "sort_order" int4,
  "status" int4,
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "base"."sys_dict_item"."dict_id" IS '字典id';
COMMENT ON COLUMN "base"."sys_dict_item"."item_text" IS '字典项文本';
COMMENT ON COLUMN "base"."sys_dict_item"."item_value" IS '字典项值';
COMMENT ON COLUMN "base"."sys_dict_item"."description" IS '描述';
COMMENT ON COLUMN "base"."sys_dict_item"."sort_order" IS '排序';
COMMENT ON COLUMN "base"."sys_dict_item"."status" IS '状态（1启用 0不启用）';

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO "base"."sys_dict_item" VALUES ('0072d115e07c875d76c9b022e2179128', '4d7fec1a7799a436d26d02325eff295e', '低', 'L', '低', 3, 1, 'admin', '2019-04-16 17:04:59', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('05a2e732ce7b00aa52141ecc3e330b4e', '3486f32803bb953e7155dab3513dc68b', '已删除', '1', NULL, NULL, 1, 'admin', '2025-10-18 21:46:56', 'admin', '2019-03-28 22:23:20');
INSERT INTO "base"."sys_dict_item" VALUES ('096c2e758d823def3855f6376bc736fb', 'bd1b8bc28e65d6feefefb6f3c79f42fd', 'SQL', 'sql', NULL, 1, 1, 'admin', '2019-04-12 17:26:26', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('0c9532916f5cd722017b46bc4d953e41', '2f0320997ade5dd147c90130f7218c3e', '指定用户', 'USER', NULL, NULL, 1, 'admin', '2019-03-17 21:22:19', 'admin', '2019-03-17 21:22:28');
INSERT INTO "base"."sys_dict_item" VALUES ('0ca4beba9efc4f9dd54af0911a946d5c', '72cce0989df68887546746d8f09811aa', '附表', '3', NULL, 3, 1, 'admin', '2019-03-27 10:13:43', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1030a2652608f5eac3b49d70458b8532', '2e02df51611a4b9632828ab7e5338f00', '禁用', '2', '禁用', 2, 1, 'admin', '2021-03-26 18:27:28', 'admin', '2019-04-26 18:39:11');
INSERT INTO "base"."sys_dict_item" VALUES ('1174509082208395266', '1174511106530525185', '岗位', '3', '岗位', 1, 1, 'admin', '2019-09-19 10:31:16', '', NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1174509601047994369', '1174509082208395266', '员级', '1', '', 1, 1, 'admin', '2019-09-19 10:24:45', 'admin', '2019-09-23 11:46:39');
INSERT INTO "base"."sys_dict_item" VALUES ('1174509667297026049', '1174509082208395266', '助级', '2', '', 2, 1, 'admin', '2019-09-19 10:25:01', 'admin', '2019-09-23 11:46:47');
INSERT INTO "base"."sys_dict_item" VALUES ('1174509713568587777', '1174509082208395266', '中级', '3', '', 3, 1, 'admin', '2019-09-19 10:25:12', 'admin', '2019-09-23 11:46:56');
INSERT INTO "base"."sys_dict_item" VALUES ('1174509788361416705', '1174509082208395266', '副高级', '4', '', 4, 1, 'admin', '2019-09-19 10:25:30', 'admin', '2019-09-23 11:47:06');
INSERT INTO "base"."sys_dict_item" VALUES ('1174509835803189250', '1174509082208395266', '正高级', '5', '', 5, 1, 'admin', '2019-09-19 10:25:41', 'admin', '2019-09-23 11:47:12');
INSERT INTO "base"."sys_dict_item" VALUES ('1174511197735665665', '1174511106530525185', '公司', '1', '公司', 1, 1, 'admin', '2019-09-19 10:31:05', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1174511244036587521', '1174511106530525185', '部门', '2', '部门', 1, 1, 'admin', '2019-09-19 10:31:16', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1178295553450061826', '1178295274528845826', '可编辑(未授权禁用)', '2', '', 2, 1, 'admin', '2019-09-29 21:08:46', 'admin', '2019-09-29 21:09:18');
INSERT INTO "base"."sys_dict_item" VALUES ('1178295639554928641', '1178295274528845826', '可见(未授权不可见)', '1', '', 1, 1, 'admin', '2019-09-29 21:09:06', 'admin', '2019-09-29 21:09:24');
INSERT INTO "base"."sys_dict_item" VALUES ('1199517884758368257', '1199517671259906049', '一般', '1', '', 1, 1, 'admin', '2019-11-27 10:38:44', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1199517914017832962', '1199517671259906049', '重要', '2', '', 1, 1, 'admin', '2019-11-27 10:38:51', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1199517941339529217', '1199517671259906049', '紧急', '3', '', 1, 1, 'admin', '2019-11-27 10:38:58', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1199518186144276482', '1199518099888414722', '日常记录', '1', '', 1, 1, 'admin', '2019-11-27 10:39:56', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1199518214858481666', '1199518099888414722', '本周工作', '2', '', 1, 1, 'admin', '2019-11-27 10:40:03', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1199518235943247874', '1199518099888414722', '下周计划', '3', '', 1, 1, 'admin', '2019-11-27 10:40:08', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1199520817285701634', '1199520177767587841', '列表', '1', '', 1, 1, 'admin', '2019-11-27 10:50:24', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1199520835035996161', '1199520177767587841', '链接', '2', '', 1, 1, 'admin', '2019-11-27 10:50:28', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1199525468672405505', '1199525215290306561', '未开始', '0', '', 1, 1, 'admin', '2019-11-27 11:08:52', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1199525490575060993', '1199525215290306561', '进行中', '1', '', 1, 1, 'admin', '2019-11-27 11:08:58', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1199525506429530114', '1199525215290306561', '已完成', '2', '', 1, 1, 'admin', '2019-11-27 11:09:02', 'admin', '2019-11-27 11:10:02');
INSERT INTO "base"."sys_dict_item" VALUES ('1199607547704647681', '4f69be5f507accea8d5df5f11346181a', '系统', '4', '', 1, 1, 'admin', '2019-11-27 16:35:02', 'admin', '2019-11-27 19:37:46');
INSERT INTO "base"."sys_dict_item" VALUES ('1209733775114702850', '1209733563293962241', 'MySQL', '1', '', 1, 1, 'admin', '2019-12-25 15:13:02', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1209733839933476865', '1209733563293962241', 'Oracle', '2', '', 1, 1, 'admin', '2019-12-25 15:13:18', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1209733903020003330', '1209733563293962241', 'SQLServer', '3', '', 1, 1, 'admin', '2019-12-25 15:13:33', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1232913424813486081', '1232913193820581889', '官方示例', 'demo', '', 1, 1, 'admin', '2020-02-27 14:20:42', 'admin', '2020-02-27 14:21:37');
INSERT INTO "base"."sys_dict_item" VALUES ('1232913493717512194', '1232913193820581889', '流程表单', 'bpm', '', 2, 1, 'admin', '2020-02-27 14:20:58', 'admin', '2020-02-27 14:22:20');
INSERT INTO "base"."sys_dict_item" VALUES ('1232913605382467585', '1232913193820581889', '测试表单', 'temp', '', 4, 1, 'admin', '2020-02-27 14:21:25', 'admin', '2020-02-27 14:22:16');
INSERT INTO "base"."sys_dict_item" VALUES ('1232914232372195330', '1232913193820581889', '导入表单', 'bdfl_include', '', 5, 1, 'admin', '2020-02-27 14:23:54', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1234371726545010689', '4e4602b3e3686f0911384e188dc7efb4', '左模糊', 'LEFT_LIKE', '左模糊', 7, 1, 'admin', '2020-03-02 14:55:27', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1234371809495760898', '4e4602b3e3686f0911384e188dc7efb4', '右模糊', 'RIGHT_LIKE', '右模糊', 7, 1, 'admin', '2020-03-02 14:55:47', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1250688147579228161', '1250687930947620866', '正常', '0', '', 1, 1, 'admin', '2020-04-16 15:31:05', '', NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1250688201064992770', '1250687930947620866', '停止', '-1', '', 1, 1, 'admin', '2020-04-16 15:31:18', '', NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('147c48ff4b51545032a9119d13f3222a', 'd6e1152968b02d69ff358c75b48a6ee1', '测试流程', 'test', NULL, 1, 1, 'admin', '2019-03-22 19:27:05', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1543fe7e5e26fb97cdafe4981bedc0c8', '4c03fca6bf1f0299c381213961566349', '单排布局', 'single', NULL, 2, 1, 'admin', '2022-07-12 17:43:39', 'admin', '2019-04-12 17:43:57');
INSERT INTO "base"."sys_dict_item" VALUES ('1ce390c52453891f93514c1bd2795d44', 'ad7c65ba97c20a6805d5dcdf13cdaf36', '000', '00', NULL, 1, 1, 'admin', '2019-03-22 16:34:34', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('1db531bcff19649fa82a644c8a939dc4', '4c03fca6bf1f0299c381213961566349', '组合布局', 'combination', '', 4, 1, 'admin', '2019-05-11 16:07:08', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('222705e11ef0264d4214affff1fb4ff9', '4f69be5f507accea8d5df5f11346181a', '短信', '1', '', 1, 1, 'admin', '2023-02-28 10:50:36', 'admin', '2019-04-28 10:58:11');
INSERT INTO "base"."sys_dict_item" VALUES ('23a5bb76004ed0e39414e928c4cde155', '4e4602b3e3686f0911384e188dc7efb4', '不等于', '!=', '不等于', 3, 1, 'admin', '2019-04-01 16:46:15', 'admin', '2019-04-01 17:48:40');
INSERT INTO "base"."sys_dict_item" VALUES ('25847e9cb661a7c711f9998452dc09e6', '4e4602b3e3686f0911384e188dc7efb4', '小于等于', '<=', '小于等于', 6, 1, 'admin', '2019-04-01 16:44:34', 'admin', '2019-04-01 17:49:10');
INSERT INTO "base"."sys_dict_item" VALUES ('2d51376643f220afdeb6d216a8ac2c01', '68168534ff5065a152bfab275c2136f8', '有效', '1', '有效', 2, 1, 'admin', '2019-04-26 19:22:01', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('308c8aadf0c37ecdde188b97ca9833f5', '8dfe32e2d29ea9430a988b3b558bf233', '已发布', '1', '已发布', 2, 1, 'admin', '2019-04-16 17:41:24', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('333e6b2196e01ef9a5f76d74e86a6e33', '8dfe32e2d29ea9430a988b3b558bf233', '未发布', '0', '未发布', 1, 1, 'admin', '2019-04-16 17:41:12', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('337ea1e401bda7233f6258c284ce4f50', 'bd1b8bc28e65d6feefefb6f3c79f42fd', 'JSON', 'json', NULL, 1, 1, 'admin', '2019-04-12 17:26:33', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('33bc9d9f753cf7dc40e70461e50fdc54', 'a9d9942bd0eccb6e89de92d130ec4c4a', '发送失败', '2', NULL, 3, 1, 'admin', '2019-04-12 18:20:02', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('3fbc03d6c994ae06d083751248037c0e', '78bda155fe380b1b3f175f1e88c284c6', '已完成', '3', '已完成', 3, 1, 'admin', '2019-05-09 16:33:25', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('41d7aaa40c9b61756ffb1f28da5ead8e', '0b5d19e1fce4b2e6647e6b4a17760c14', '通知公告', '1', NULL, 1, 1, 'admin', '2019-04-22 18:01:57', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('41fa1e9571505d643aea87aeb83d4d76', '4e4602b3e3686f0911384e188dc7efb4', '等于', '=', '等于', 4, 1, 'admin', '2019-04-01 16:45:24', 'admin', '2019-04-01 17:49:00');
INSERT INTO "base"."sys_dict_item" VALUES ('43d2295b8610adce9510ff196a49c6e9', '845da5006c97754728bf48b6a10f79cc', '正常', '1', NULL, NULL, 1, 'admin', '2019-03-18 21:45:51', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('4f05fb5376f4c61502c5105f52e4dd2b', '83bfb33147013cc81640d5fd9eda030c', '操作日志', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:22:49', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('50223341bfb5ba30bf6319789d8d17fe', 'd6e1152968b02d69ff358c75b48a6ee1', '业务办理', 'business', NULL, 3, 1, 'admin', '2023-04-22 19:28:05', 'admin', '2019-03-22 23:24:39');
INSERT INTO "base"."sys_dict_item" VALUES ('51222413e5906cdaf160bb5c86fb827c', 'a7adbcd86c37f7dbc9b66945c82ef9e6', '是', '1', '', 1, 1, 'admin', '2019-05-22 19:29:45', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('538fca35afe004972c5f3947c039e766', '2e02df51611a4b9632828ab7e5338f00', '显示', '1', '显示', 1, 1, 'admin', '2025-03-26 18:27:13', 'admin', '2019-04-26 18:39:07');
INSERT INTO "base"."sys_dict_item" VALUES ('fcec03570f68a175e1964808dc3f1c91', '4c03fca6bf1f0299c381213961566349', 'Tab风格', 'tab', NULL, 1, 1, 'admin', '2019-04-12 17:43:31', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('5584c21993bde231bbde2b966f2633ac', '4e4602b3e3686f0911384e188dc7efb4', '自定义SQL表达式', 'USE_SQL_RULES', '自定义SQL表达式', 9, 1, 'admin', '2019-04-01 10:45:24', 'admin', '2019-04-01 17:49:27');
INSERT INTO "base"."sys_dict_item" VALUES ('58b73b344305c99b9d8db0fc056bbc0a', '72cce0989df68887546746d8f09811aa', '主表', '2', NULL, 2, 1, 'admin', '2019-03-27 10:13:36', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('5b65a88f076b32e8e69d19bbaadb52d5', '2f0320997ade5dd147c90130f7218c3e', '全体用户', 'ALL', NULL, NULL, 1, 'admin', '2020-10-17 21:22:43', 'admin', '2019-03-28 22:17:09');
INSERT INTO "base"."sys_dict_item" VALUES ('5d833f69296f691843ccdd0c91212b6b', '880a895c98afeca9d9ac39f29e67c13e', '修改', '3', '', 3, 1, 'admin', '2019-07-22 10:55:07', 'admin', '2019-07-22 10:55:41');
INSERT INTO "base"."sys_dict_item" VALUES ('5d84a8634c8fdfe96275385075b105c9', '3d9a351be3436fbefb1307d4cfb49bf2', '女', '2', NULL, 2, 1, NULL, '2019-01-04 14:56:56', NULL, '2019-01-04 17:38:12');
INSERT INTO "base"."sys_dict_item" VALUES ('66c952ae2c3701a993e7db58f3baf55e', '4e4602b3e3686f0911384e188dc7efb4', '大于', '>', '大于', 1, 1, 'admin', '2019-04-01 10:45:46', 'admin', '2019-04-01 17:48:29');
INSERT INTO "base"."sys_dict_item" VALUES ('6937c5dde8f92e9a00d4e2ded9198694', 'ad7c65ba97c20a6805d5dcdf13cdaf36', 'easyui', '3', NULL, 1, 1, 'admin', '2019-03-22 16:32:15', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('69cacf64e244100289ddd4aa9fa3b915', 'a9d9942bd0eccb6e89de92d130ec4c4a', '未发送', '0', NULL, 1, 1, 'admin', '2019-04-12 18:19:23', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('6a7a9e1403a7943aba69e54ebeff9762', '4f69be5f507accea8d5df5f11346181a', '邮件', '2', '', 2, 1, 'admin', '2031-02-28 10:50:44', 'admin', '2019-04-28 10:59:03');
INSERT INTO "base"."sys_dict_item" VALUES ('6c682d78ddf1715baf79a1d52d2aa8c2', '72cce0989df68887546746d8f09811aa', '单表', '1', NULL, 1, 1, 'admin', '2019-03-27 10:13:29', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('6d404fd2d82311fbc87722cd302a28bc', '4e4602b3e3686f0911384e188dc7efb4', '模糊', 'LIKE', '模糊', 7, 1, 'admin', '2019-04-01 16:46:02', 'admin', '2019-04-01 17:49:20');
INSERT INTO "base"."sys_dict_item" VALUES ('6d4e26e78e1a09699182e08516c49fc4', '4d7fec1a7799a436d26d02325eff295e', '高', 'H', '高', 1, 1, 'admin', '2019-04-16 17:04:24', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('700e9f030654f3f90e9ba76ab0713551', '6b78e3f59faec1a4750acff08030a79b', '333', '333', NULL, NULL, 1, 'admin', '2019-02-21 19:59:47', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('7050c1522702bac3be40e3b7d2e1dfd8', 'c5a14c75172783d72cbee6ee7f5df5d1', '柱状图', 'bar', NULL, 1, 1, 'admin', '2019-04-12 17:05:17', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('71b924faa93805c5c1579f12e001c809', 'd6e1152968b02d69ff358c75b48a6ee1', 'OA办公', 'oa', NULL, 2, 1, 'admin', '2021-03-22 19:27:17', 'admin', '2019-03-22 23:24:36');
INSERT INTO "base"."sys_dict_item" VALUES ('75b260d7db45a39fc7f21badeabdb0ed', 'c36169beb12de8a71c8683ee7c28a503', '不启用', '0', NULL, NULL, 1, 'admin', '2019-03-18 23:29:41', 'admin', '2019-03-18 23:29:54');
INSERT INTO "base"."sys_dict_item" VALUES ('7688469db4a3eba61e6e35578dc7c2e5', 'c36169beb12de8a71c8683ee7c28a503', '启用', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:29:28', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('78ea6cadac457967a4b1c4eb7aaa418c', 'fc6cd58fde2e8481db10d3a1e68ce70c', '正常', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:30:28', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('7ccf7b80c70ee002eceb3116854b75cb', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '按钮权限', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:25:40', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('81fb2bb0e838dc68b43f96cc309f8257', 'fc6cd58fde2e8481db10d3a1e68ce70c', '冻结', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:30:37', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('83250269359855501ec4e9c0b7e21596', '4274efc2292239b6f000b153f50823ff', '可见/可访问(授权后可见/可访问)', '1', '', 1, 1, 'admin', '2019-05-10 17:54:51', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('84778d7e928bc843ad4756db1322301f', '4e4602b3e3686f0911384e188dc7efb4', '大于等于', '>=', '大于等于', 5, 1, 'admin', '2019-04-01 10:46:02', 'admin', '2019-04-01 17:49:05');
INSERT INTO "base"."sys_dict_item" VALUES ('848d4da35ebd93782029c57b103e5b36', 'c5a14c75172783d72cbee6ee7f5df5d1', '饼图', 'pie', NULL, 3, 1, 'admin', '2019-04-12 17:05:49', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('84dfc178dd61b95a72900fcdd624c471', '78bda155fe380b1b3f175f1e88c284c6', '处理中', '2', '处理中', 2, 1, 'admin', '2019-05-09 16:33:01', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('86f19c7e0a73a0bae451021ac05b99dd', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '子菜单', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:25:27', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('8bccb963e1cd9e8d42482c54cc609ca2', '4f69be5f507accea8d5df5f11346181a', '微信', '3', NULL, 3, 1, 'admin', '2021-05-11 14:29:12', 'admin', '2019-04-11 14:29:31');
INSERT INTO "base"."sys_dict_item" VALUES ('8c618902365ca681ebbbe1e28f11a548', '4c753b5293304e7a445fd2741b46529d', '启用', '1', '', 0, 1, 'admin', '2020-07-18 23:19:27', 'admin', '2019-05-17 14:51:18');
INSERT INTO "base"."sys_dict_item" VALUES ('8cdf08045056671efd10677b8456c999', '4274efc2292239b6f000b153f50823ff', '可编辑(未授权时禁用)', '2', '', 2, 1, 'admin', '2019-05-10 17:55:38', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('8ff48e657a7c5090d4f2a59b37d1b878', '4d7fec1a7799a436d26d02325eff295e', '中', 'M', '中', 2, 1, 'admin', '2019-04-16 17:04:40', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('948923658baa330319e59b2213cda97c', '880a895c98afeca9d9ac39f29e67c13e', '添加', '2', '', 2, 1, 'admin', '2019-07-22 10:54:59', 'admin', '2019-07-22 10:55:36');
INSERT INTO "base"."sys_dict_item" VALUES ('9a96c4a4e4c5c9b4e4d0cbf6eb3243cc', '4c753b5293304e7a445fd2741b46529d', '不启用', '0', NULL, 1, 1, 'admin', '2019-03-18 23:19:53', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('a1e7d1ca507cff4a480c8caba7c1339e', '880a895c98afeca9d9ac39f29e67c13e', '导出', '6', '', 6, 1, 'admin', '2019-07-22 12:06:50', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('a2be752dd4ec980afaec1efd1fb589af', '8dfe32e2d29ea9430a988b3b558bf233', '已撤销', '2', '已撤销', 3, 1, 'admin', '2019-04-16 17:41:39', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('aa0d8a8042a18715a17f0a888d360aa4', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '一级菜单', '0', NULL, NULL, 1, 'admin', '2019-03-18 23:24:52', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('adcf2a1fe93bb99a84833043f475fe0b', '4e4602b3e3686f0911384e188dc7efb4', '包含', 'IN', '包含', 8, 1, 'admin', '2019-04-01 16:45:47', 'admin', '2019-04-01 17:49:24');
INSERT INTO "base"."sys_dict_item" VALUES ('b029a41a851465332ee4ee69dcf0a4c2', '0b5d19e1fce4b2e6647e6b4a17760c14', '系统消息', '2', NULL, 1, 1, 'admin', '2019-02-22 18:02:08', 'admin', '2019-04-22 18:02:13');
INSERT INTO "base"."sys_dict_item" VALUES ('b2a8b4bb2c8e66c2c4b1bb086337f393', '3486f32803bb953e7155dab3513dc68b', '正常', '0', NULL, NULL, 1, 'admin', '2022-10-18 21:46:48', 'admin', '2019-03-28 22:22:20');
INSERT INTO "base"."sys_dict_item" VALUES ('b57f98b88363188daf38d42f25991956', '6b78e3f59faec1a4750acff08030a79b', '22', '222', NULL, NULL, 0, 'admin', '2019-02-21 19:59:43', 'admin', '2019-03-11 21:23:27');
INSERT INTO "base"."sys_dict_item" VALUES ('b5f3bd5f66bb9a83fecd89228c0d93d1', '68168534ff5065a152bfab275c2136f8', '无效', '0', '无效', 1, 1, 'admin', '2019-04-26 19:21:49', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('b9fbe2a3602d4a27b45c100ac5328484', '78bda155fe380b1b3f175f1e88c284c6', '待提交', '1', '待提交', 1, 1, 'admin', '2019-05-09 16:32:35', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('ba27737829c6e0e582e334832703d75e', '236e8a4baff0db8c62c00dd95632834f', '同步', '1', '同步', 1, 1, 'admin', '2019-05-15 15:28:15', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('bcec04526b04307e24a005d6dcd27fd6', '880a895c98afeca9d9ac39f29e67c13e', '导入', '5', '', 5, 1, 'admin', '2019-07-22 12:06:41', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('c53da022b9912e0aed691bbec3c78473', '880a895c98afeca9d9ac39f29e67c13e', '查询', '1', '', 1, 1, 'admin', '2019-07-22 10:54:51', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('c5700a71ad08994d18ad1dacc37a71a9', 'a7adbcd86c37f7dbc9b66945c82ef9e6', '否', '0', '', 1, 1, 'admin', '2019-05-22 19:29:55', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('cbfcc5b88fc3a90975df23ffc8cbe29c', 'c5a14c75172783d72cbee6ee7f5df5d1', '曲线图', 'line', NULL, 2, 1, 'admin', '2019-05-12 17:05:30', 'admin', '2019-04-12 17:06:06');
INSERT INTO "base"."sys_dict_item" VALUES ('d217592908ea3e00ff986ce97f24fb98', 'c5a14c75172783d72cbee6ee7f5df5d1', '数据列表', 'table', NULL, 4, 1, 'admin', '2019-04-12 17:05:56', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('df168368dcef46cade2aadd80100d8aa', '3d9a351be3436fbefb1307d4cfb49bf2', '男', '1', NULL, 1, 1, NULL, '2027-08-04 14:56:49', 'admin', '2019-03-23 22:44:44');
INSERT INTO "base"."sys_dict_item" VALUES ('e6329e3a66a003819e2eb830b0ca2ea0', '4e4602b3e3686f0911384e188dc7efb4', '小于', '<', '小于', 2, 1, 'admin', '2019-04-01 16:44:15', 'admin', '2019-04-01 17:48:34');
INSERT INTO "base"."sys_dict_item" VALUES ('e94eb7af89f1dbfa0d823580a7a6e66a', '236e8a4baff0db8c62c00dd95632834f', '不同步', '0', '不同步', 2, 1, 'admin', '2019-05-15 15:28:28', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('f0162f4cc572c9273f3e26b2b4d8c082', 'ad7c65ba97c20a6805d5dcdf13cdaf36', 'booostrap', '1', NULL, 1, 1, 'admin', '2021-08-22 16:32:04', 'admin', '2019-03-22 16:33:57');
INSERT INTO "base"."sys_dict_item" VALUES ('f16c5706f3ae05c57a53850c64ce7c45', 'a9d9942bd0eccb6e89de92d130ec4c4a', '发送成功', '1', NULL, 2, 1, 'admin', '2019-04-12 18:19:43', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('f2a7920421f3335afdf6ad2b342f6b5d', '845da5006c97754728bf48b6a10f79cc', '冻结', '2', NULL, NULL, 1, 'admin', '2019-03-18 21:46:02', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('f37f90c496ec9841c4c326b065e00bb2', '83bfb33147013cc81640d5fd9eda030c', '登录日志', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:22:37', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('f753aff60ff3931c0ecb4812d8b5e643', '4c03fca6bf1f0299c381213961566349', '双排布局', 'double', NULL, 3, 1, 'admin', '2019-04-12 17:43:51', NULL, NULL);
INSERT INTO "base"."sys_dict_item" VALUES ('f80a8f6838215753b05e1a5ba3346d22', '880a895c98afeca9d9ac39f29e67c13e', '删除', '4', '', 4, 1, 'admin', '2019-07-22 10:55:14', 'admin', '2019-07-22 10:55:30');
INSERT INTO "base"."sys_dict_item" VALUES ('fe50b23ae5e68434def76f67cef35d2d', '78bda155fe380b1b3f175f1e88c284c6', '已作废', '4', '已作废', 4, 1, 'admin', '2021-09-09 16:33:43', 'admin', '2019-05-09 16:34:40');

-- ----------------------------
-- Table structure for sys_fill_rule
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_fill_rule";
CREATE TABLE "base"."sys_fill_rule" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "rule_name" varchar(100) COLLATE "pg_catalog"."default",
  "rule_code" varchar(100) COLLATE "pg_catalog"."default",
  "rule_class" varchar(100) COLLATE "pg_catalog"."default",
  "rule_params" varchar(200) COLLATE "pg_catalog"."default",
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6)
)
;
COMMENT ON COLUMN "base"."sys_fill_rule"."id" IS '主键ID';
COMMENT ON COLUMN "base"."sys_fill_rule"."rule_name" IS '规则名称';
COMMENT ON COLUMN "base"."sys_fill_rule"."rule_code" IS '规则Code';
COMMENT ON COLUMN "base"."sys_fill_rule"."rule_class" IS '规则实现类';
COMMENT ON COLUMN "base"."sys_fill_rule"."rule_params" IS '规则参数';
COMMENT ON COLUMN "base"."sys_fill_rule"."update_by" IS '修改人';
COMMENT ON COLUMN "base"."sys_fill_rule"."update_time" IS '修改时间';
COMMENT ON COLUMN "base"."sys_fill_rule"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."sys_fill_rule"."create_time" IS '创建时间';

-- ----------------------------
-- Records of sys_fill_rule
-- ----------------------------
INSERT INTO "base"."sys_fill_rule" VALUES ('1202551334738382850', '机构编码生成', 'org_num_role', 'org.jeecg.modules.system.rule.OrgCodeRule', '{"parentId":"c6d7cb4deeac411cb3384b1b31278596"}', 'admin', '2019-12-09 10:37:06', 'admin', '2019-12-05 19:32:35');
INSERT INTO "base"."sys_fill_rule" VALUES ('1202787623203065858', '分类字典编码生成', 'category_code_rule', 'org.jeecg.modules.system.rule.CategoryCodeRule', '{"pid":""}', 'admin', '2019-12-09 10:36:54', 'admin', '2019-12-06 11:11:31');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_log";
CREATE TABLE "base"."sys_log" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "log_type" int4,
  "log_content" varchar(1000) COLLATE "pg_catalog"."default",
  "operate_type" int4,
  "userid" varchar(32) COLLATE "pg_catalog"."default",
  "username" varchar(100) COLLATE "pg_catalog"."default",
  "ip" varchar(100) COLLATE "pg_catalog"."default",
  "method" varchar(500) COLLATE "pg_catalog"."default",
  "request_url" varchar(255) COLLATE "pg_catalog"."default",
  "request_param" text COLLATE "pg_catalog"."default",
  "request_type" varchar(10) COLLATE "pg_catalog"."default",
  "cost_time" int8,
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "base"."sys_log"."log_type" IS '日志类型（1登录日志，2操作日志）';
COMMENT ON COLUMN "base"."sys_log"."log_content" IS '日志内容';
COMMENT ON COLUMN "base"."sys_log"."operate_type" IS '操作类型';
COMMENT ON COLUMN "base"."sys_log"."userid" IS '操作用户账号';
COMMENT ON COLUMN "base"."sys_log"."username" IS '操作用户名称';
COMMENT ON COLUMN "base"."sys_log"."ip" IS 'IP';
COMMENT ON COLUMN "base"."sys_log"."method" IS '请求java方法';
COMMENT ON COLUMN "base"."sys_log"."request_url" IS '请求路径';
COMMENT ON COLUMN "base"."sys_log"."request_param" IS '请求参数';
COMMENT ON COLUMN "base"."sys_log"."request_type" IS '请求类型';
COMMENT ON COLUMN "base"."sys_log"."cost_time" IS '耗时';
COMMENT ON COLUMN "base"."sys_log"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."sys_log"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."sys_log"."update_by" IS '更新人';
COMMENT ON COLUMN "base"."sys_log"."update_time" IS '更新时间';
COMMENT ON TABLE "base"."sys_log" IS '系统日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO "base"."sys_log" VALUES ('1263759756472602625', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-22 17:12:59.976', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1263761953247711233', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-22 17:21:43.871', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1264762653737881601', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-25 11:38:09.336', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1264762854728929282', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-25 11:38:57.382', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1264811301754535938', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-25 14:51:28.018', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1264816445552492545', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-25 15:11:54.428', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1264827123952680962', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-25 15:54:20.358', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1264827212226002946', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-25 15:54:41.404', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1264827236469080066', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-25 15:54:47.183', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1264827280291168257', 1, '用户登录失败，用户不存在！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-25 15:54:57.632', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1264827360326877186', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-25 15:55:16.714', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1264831384723816449', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-25 16:11:16.203', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1264831445994209282', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-25 16:11:30.812', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1264840367383666689', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-25 16:46:57.798', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1264841610395017217', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-25 16:51:54.194', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1264841681077428225', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-25 16:52:11.048', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1264857050227826690', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-25 17:53:15.337', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1264859270491037697', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-25 18:02:04.691', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1264859823258361857', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=, code=, name=, postRank=, companyId=, createBy=, createTime=null, updateBy=, updateTime=null, sysOrgCode=)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@318c8f3', NULL, 662, 'admin', '2020-05-25 18:04:16.478', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1265099000474415106', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 09:54:40.399', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1265099370873401345', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 09:56:09.081', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1265108946863697921', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 99999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3499350b', NULL, 118, 'admin', '2020-05-26 10:34:12.176', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1265108960650375169', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7d916610', NULL, 36, 'admin', '2020-05-26 10:34:15.462', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1265112239136485378', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 10:47:17.114', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1265112315040804865', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 10:47:35.211', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1265128485341016065', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 11:51:50.509', NULL, NULL);
INSERT INTO "base"."sys_log" VALUES ('1265128523605651458', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26 11:51:59.633', NULL, NULL);

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_permission";
CREATE TABLE "base"."sys_permission" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_id" varchar(32) COLLATE "pg_catalog"."default",
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "url" varchar(255) COLLATE "pg_catalog"."default",
  "component" varchar(255) COLLATE "pg_catalog"."default",
  "component_name" varchar(100) COLLATE "pg_catalog"."default",
  "redirect" varchar(255) COLLATE "pg_catalog"."default",
  "menu_type" int4,
  "perms" varchar(255) COLLATE "pg_catalog"."default",
  "perms_type" varchar(10) COLLATE "pg_catalog"."default",
  "sort_no" float8,
  "always_show" int2,
  "icon" varchar(100) COLLATE "pg_catalog"."default",
  "is_route" int2,
  "is_leaf" int2,
  "keep_alive" int2,
  "hidden" int4,
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "del_flag" int4,
  "rule_flag" int4,
  "status" varchar(2) COLLATE "pg_catalog"."default",
  "internal_or_external" int2
)
;
COMMENT ON COLUMN "base"."sys_permission"."id" IS '主键id';
COMMENT ON COLUMN "base"."sys_permission"."parent_id" IS '父id';
COMMENT ON COLUMN "base"."sys_permission"."name" IS '菜单标题';
COMMENT ON COLUMN "base"."sys_permission"."url" IS '路径';
COMMENT ON COLUMN "base"."sys_permission"."component" IS '组件';
COMMENT ON COLUMN "base"."sys_permission"."component_name" IS '组件名字';
COMMENT ON COLUMN "base"."sys_permission"."redirect" IS '一级菜单跳转地址';
COMMENT ON COLUMN "base"."sys_permission"."menu_type" IS '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)';
COMMENT ON COLUMN "base"."sys_permission"."perms" IS '菜单权限编码';
COMMENT ON COLUMN "base"."sys_permission"."perms_type" IS '权限策略1显示2禁用';
COMMENT ON COLUMN "base"."sys_permission"."sort_no" IS '菜单排序';
COMMENT ON COLUMN "base"."sys_permission"."always_show" IS '聚合子路由: 1是0否';
COMMENT ON COLUMN "base"."sys_permission"."icon" IS '菜单图标';
COMMENT ON COLUMN "base"."sys_permission"."is_route" IS '是否路由菜单: 0:不是  1:是（默认值1）';
COMMENT ON COLUMN "base"."sys_permission"."is_leaf" IS '是否叶子节点:    1:是   0:不是';
COMMENT ON COLUMN "base"."sys_permission"."keep_alive" IS '是否缓存该页面:    1:是   0:不是';
COMMENT ON COLUMN "base"."sys_permission"."hidden" IS '是否隐藏路由: 0否,1是';
COMMENT ON COLUMN "base"."sys_permission"."description" IS '描述';
COMMENT ON COLUMN "base"."sys_permission"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."sys_permission"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."sys_permission"."update_by" IS '更新人';
COMMENT ON COLUMN "base"."sys_permission"."update_time" IS '更新时间';
COMMENT ON COLUMN "base"."sys_permission"."del_flag" IS '删除状态 0正常 1已删除';
COMMENT ON COLUMN "base"."sys_permission"."rule_flag" IS '是否添加数据权限1是0否';
COMMENT ON COLUMN "base"."sys_permission"."status" IS '按钮权限状态(0无效1有效)';
COMMENT ON COLUMN "base"."sys_permission"."internal_or_external" IS '外链菜单打开方式 0/内部打开 1/外部打开';
COMMENT ON TABLE "base"."sys_permission" IS '菜单权限表';

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO "base"."sys_permission" VALUES ('00a2a0ae65cdca5e93209cdbde97cbe6', '2e42e3835c2b44ec9f7bc26c146ee531', '成功', '/result/success', 'result/Success', NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('020b06793e4de2eee0007f603000c769', 'f0675b52d89100ee88472b6800754a08', 'ViserChartDemo', '/report/ViserChartDemo', 'jeecg/report/ViserChartDemo', NULL, NULL, 1, NULL, NULL, 3, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-03 19:08:53', 'admin', '2019-04-03 19:08:53', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('024f1fd1283dc632458976463d8984e1', '700b7f95165c46cc7a78bf227aa8fed3', 'Tomcat信息', '/monitor/TomcatInfo', 'modules/monitor/TomcatInfo', NULL, NULL, 1, NULL, NULL, 4, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 09:44:29', 'admin', '2019-05-07 15:19:10', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('043780fa095ff1b2bec4dc406d76f023', '2a470fc0c3954d9dbb61de6d80846549', '表格合计', '/jeecg/tableTotal', 'jeecg/TableTotal', NULL, NULL, 1, NULL, '1', 3, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-08-14 10:28:46', NULL, NULL, 0, 0, '1', NULL);
INSERT INTO "base"."sys_permission" VALUES ('05b3c82ddb2536a4a5ee1a4c46b5abef', '540a2936940846cb98114ffb0d145cb8', '用户列表', '/list/user-list', 'list/UserList', NULL, NULL, 1, NULL, NULL, 3, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('0620e402857b8c5b605e1ad9f4b89350', '2a470fc0c3954d9dbb61de6d80846549', '异步树列表Demo', '/jeecg/JeecgTreeTable', 'jeecg/JeecgTreeTable', NULL, NULL, 1, NULL, '0', 3, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-05-13 17:30:30', 'admin', '2019-05-13 17:32:17', 0, 0, '1', NULL);
INSERT INTO "base"."sys_permission" VALUES ('078f9558cdeab239aecb2bda1a8ed0d1', 'fb07ca05a3e13674dbf6d3245956da2e', '搜索列表（文章）', '/list/search/article', 'list/TableList', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-12 14:00:34', 'admin', '2019-02-12 14:17:54', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('08e6b9dc3c04489c8e1ff2ce6f105aa4', '', '系统监控', '/dashboard3', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 6, 0, 'dashboard', 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-03-31 22:19:58', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('0ac2ad938963b6c6d1af25477d5b8b51', '8d4683aacaa997ab86b966b464360338', '代码生成按钮', NULL, NULL, NULL, NULL, 2, 'online:goGenerateCode', '1', 1, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-06-11 14:20:09', NULL, NULL, 0, 0, '1', NULL);
INSERT INTO "base"."sys_permission" VALUES ('109c78a583d4693ce2f16551b7786786', 'e41b69c57a941a3bbcce45032fe57605', 'Online报表配置', '/online/cgreport', 'modules/online/cgreport/OnlCgreportHeadList', NULL, NULL, 1, NULL, NULL, 2, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-08 10:51:07', 'admin', '2019-03-30 19:04:28', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('1166535831146504193', '2a470fc0c3954d9dbb61de6d80846549', '对象存储', '/oss/file', 'modules/oss/OSSFileList', NULL, NULL, 1, NULL, '1', 1, 0, '', 1, 1, 0, 0, NULL, 'admin', '2019-08-28 02:19:50', 'admin', '2019-08-28 02:20:57', 0, 0, '1', NULL);
INSERT INTO "base"."sys_permission" VALUES ('1170592628746878978', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '菜单管理2', '/isystem/newPermissionList', 'system/NewPermissionList', NULL, NULL, 1, NULL, '1', 100, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-09-08 15:00:05', 'admin', '2019-12-25 09:58:18', 0, 0, '1', 0);
INSERT INTO "base"."sys_permission" VALUES ('1174506953255182338', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '职务管理', '/isystem/position', 'system/SysPositionList', NULL, NULL, 1, NULL, '1', 2, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-09-19 10:14:13', 'admin', '2019-09-19 10:15:22', 0, 0, '1', 0);
INSERT INTO "base"."sys_permission" VALUES ('1174590283938041857', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '通讯录', '/isystem/addressList', 'system/AddressList', NULL, NULL, 1, NULL, '1', 3, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-09-19 15:45:21', NULL, NULL, 0, 0, '1', 0);
INSERT INTO "base"."sys_permission" VALUES ('1192318987661234177', 'e41b69c57a941a3bbcce45032fe57605', '系统编码生成规则', '/isystem/fillRule', 'system/SysFillRuleList', NULL, NULL, 1, NULL, '1', 3, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-11-07 13:52:53', 'admin', '2020-02-23 22:42:30', 0, 0, '1', 0);
INSERT INTO "base"."sys_permission" VALUES ('1205097455226462210', '', '大屏设计', '/big/screen', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 1.1, 0, 'area-chart', 1, 0, 0, 0, NULL, 'admin', '2019-12-12 20:09:58', 'admin', '2020-02-23 23:17:59', 0, 0, '1', 0);
INSERT INTO "base"."sys_permission" VALUES ('1205098241075453953', '1205097455226462210', '生产销售监控', '{{ window._CONFIG[''domianURL''] }}/big/screen/templat/index1', 'layouts/IframePageView', NULL, NULL, 1, NULL, '1', 1, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-12-12 20:13:05', 'admin', '2019-12-12 20:15:27', 0, 0, '1', 1);
INSERT INTO "base"."sys_permission" VALUES ('1205306106780364802', '1205097455226462210', '智慧物流监控', '{{ window._CONFIG[''domianURL''] }}/big/screen/templat/index2', 'layouts/IframePageView', NULL, NULL, 1, NULL, '1', 2, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-12-13 09:59:04', 'admin', '2019-12-25 09:28:03', 0, 0, '1', 0);
INSERT INTO "base"."sys_permission" VALUES ('1209731624921534465', 'e41b69c57a941a3bbcce45032fe57605', '多数据源管理', '/isystem/dataSource', 'system/SysDataSourceList', NULL, NULL, 1, NULL, '1', 6, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-12-25 15:04:30', 'admin', '2020-02-23 22:43:37', 0, 0, '1', 0);
INSERT INTO "base"."sys_permission" VALUES ('1224641973866467330', 'e41b69c57a941a3bbcce45032fe57605', '系统编码校验规则', '/isystem/checkRule', 'system/SysCheckRuleList', NULL, NULL, 1, NULL, '1', 5, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-11-07 13:52:53', 'admin', '2020-02-23 22:43:05', 0, 0, '1', 0);
INSERT INTO "base"."sys_permission" VALUES ('1229674163694841857', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线表单ERP', '/online/cgformErpList/:code', 'modules/online/cgform/auto/erp/OnlCgformErpList', NULL, NULL, 1, NULL, '1', 5, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2020-02-18 15:49:00', 'admin', '2020-02-18 15:52:25', 0, 0, '1', 0);
INSERT INTO "base"."sys_permission" VALUES ('1232123780958064642', 'f0675b52d89100ee88472b6800754a08', 'Online报表示例', '/online/cgreport/6c7f59741c814347905a938f06ee003c', 'modules/online/cgreport/auto/OnlCgreportAutoList', NULL, NULL, 1, NULL, '1', 4, 0, NULL, 0, 1, 0, 0, NULL, 'admin', '2020-02-25 10:02:56', 'admin', '2020-05-02 15:37:30', 0, 0, '1', 0);
INSERT INTO "base"."sys_permission" VALUES ('1235823781053313025', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线内嵌子表', '/online/cgformInnerTableList/:code', 'modules/online/cgform/auto/innerTable/OnlCgformInnerTableList', NULL, NULL, 1, NULL, '1', 999, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2020-03-06 15:05:24', 'admin', '2020-03-06 15:07:42', 0, 0, '1', 0);
INSERT INTO "base"."sys_permission" VALUES ('13212d3416eb690c2e1d5033166ff47a', '2e42e3835c2b44ec9f7bc26c146ee531', '失败', '/result/fail', 'result/Error', NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('1367a93f2c410b169faa7abcbad2f77c', '6e73eb3c26099c191bf03852ee1310a1', '基本设置', '/account/settings/BaseSetting', 'account/settings/BaseSetting', 'account-settings-base', NULL, 1, 'BaseSettings', NULL, NULL, 0, NULL, 1, 1, NULL, 1, NULL, NULL, '2018-12-26 18:58:35', 'admin', '2019-03-20 12:57:31', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('190c2b43bec6a5f7a4194a85db67d96a', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '角色管理', '/isystem/roleUserList', 'system/RoleUserList', NULL, NULL, 1, NULL, NULL, 1.2, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-04-17 15:13:56', 'admin', '2019-12-25 09:36:31', 0, 0, NULL, 0);
INSERT INTO "base"."sys_permission" VALUES ('1a0811914300741f4e11838ff37a1d3a', '3f915b2769fc80648e92d04e84ca059d', '手机号禁用', NULL, NULL, NULL, NULL, 2, 'user:form:phone', '2', 1, 0, NULL, 0, 1, NULL, 0, NULL, 'admin', '2019-05-11 17:19:30', 'admin', '2019-05-11 18:00:22', 0, 0, '1', NULL);
INSERT INTO "base"."sys_permission" VALUES ('200006f0edf145a2b50eacca07585451', 'fb07ca05a3e13674dbf6d3245956da2e', '搜索列表（应用）', '/list/search/application', 'list/TableList', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-12 14:02:51', 'admin', '2019-02-12 14:14:01', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('22d6a3d39a59dd7ea9a30acfa6bfb0a5', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO动态表单', '/online/df/:table/:id', 'modules/online/cgform/auto/OnlineDynamicForm', NULL, NULL, 1, NULL, NULL, 9, 0, NULL, 0, 1, NULL, 1, NULL, 'admin', '2019-04-22 15:15:43', 'admin', '2019-04-30 18:18:26', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('265de841c58907954b8877fb85212622', '2a470fc0c3954d9dbb61de6d80846549', '图片拖拽排序', '/jeecg/imgDragSort', 'jeecg/ImgDragSort', NULL, NULL, 1, NULL, NULL, 4, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 10:43:08', 'admin', '2019-04-25 10:46:26', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('277bfabef7d76e89b33062b16a9a5020', 'e3c13679c73a4f829bcff2aba8fd68b1', '基础表单', '/form/base-form', 'form/BasicForm', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-02-26 17:02:08', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('2a470fc0c3954d9dbb61de6d80846549', '', '常见案例', '/jeecg', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 7, 0, 'qrcode', 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-04-02 11:46:42', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('2aeddae571695cd6380f6d6d334d6e7d', 'f0675b52d89100ee88472b6800754a08', '布局统计报表', '/report/ArchivesStatisticst', 'jeecg/report/ArchivesStatisticst', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-03 18:32:48', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('2dbbafa22cda07fa5d169d741b81fe12', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '在线文档', '{{ window._CONFIG[''domianURL''] }}/doc.html', 'layouts/IframePageView', NULL, NULL, 1, NULL, NULL, 3, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-01-30 10:00:01', 'admin', '2019-03-23 19:44:43', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('2e42e3835c2b44ec9f7bc26c146ee531', '', '结果页', '/result', 'layouts/PageView', NULL, NULL, 0, NULL, NULL, 8, 0, 'check-circle-o', 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-04-02 11:46:56', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('339329ed54cf255e1f9392e84f136901', '2a470fc0c3954d9dbb61de6d80846549', 'helloworld', '/jeecg/helloworld', 'jeecg/helloworld', NULL, NULL, 1, NULL, NULL, 4, 0, NULL, 1, 1, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-02-15 16:24:56', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('3f915b2769fc80648e92d04e84ca059d', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '用户管理', '/isystem/user', 'system/UserList', NULL, NULL, 1, NULL, NULL, 1.1, 0, NULL, 1, 0, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-12-25 09:36:24', 0, 0, NULL, 0);
INSERT INTO "base"."sys_permission" VALUES ('3fac0d3c9cd40fa53ab70d4c583821f8', '2a470fc0c3954d9dbb61de6d80846549', '分屏', '/jeecg/splitPanel', 'jeecg/SplitPanel', NULL, NULL, 1, NULL, NULL, 6, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 16:27:06', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('4148ec82b6acd69f470bea75fe41c357', '2a470fc0c3954d9dbb61de6d80846549', '单表模型示例', '/jeecg/jeecgDemoList', 'jeecg/JeecgDemoList', 'DemoList', NULL, 1, NULL, NULL, 1, 0, NULL, 1, 1, NULL, 0, NULL, NULL, '2018-12-28 15:57:30', 'admin', '2019-02-15 16:24:37', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('418964ba087b90a84897b62474496b93', '540a2936940846cb98114ffb0d145cb8', '查询表格', '/list/query-list', 'list/TableList', NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('4356a1a67b564f0988a484f5531fd4d9', '2a470fc0c3954d9dbb61de6d80846549', '内嵌Table', '/jeecg/TableExpandeSub', 'jeecg/TableExpandeSub', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-04 22:48:13', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('45c966826eeff4c99b8f8ebfe74511fc', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '部门管理', '/isystem/depart', 'system/DepartList', NULL, NULL, 1, NULL, NULL, 1.4, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-01-29 18:47:40', 'admin', '2019-12-25 09:36:47', 0, 0, NULL, 0);
INSERT INTO "base"."sys_permission" VALUES ('4875ebe289344e14844d8e3ea1edd73f', '', '详情页', '/profile', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 8, 0, 'profile', 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-04-02 11:46:48', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('4f66409ef3bbd69c1d80469d6e2a885e', '6e73eb3c26099c191bf03852ee1310a1', '账户绑定', '/account/settings/binding', 'account/settings/Binding', NULL, NULL, 1, 'BindingSettings', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-26 19:01:20', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('4f84f9400e5e92c95f05b554724c2b58', '540a2936940846cb98114ffb0d145cb8', '角色列表', '/list/role-list', 'list/RoleList', NULL, NULL, 1, NULL, NULL, 4, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('53a9230444d33de28aa11cc108fb1dba', '5c8042bd6c601270b2bbd9b20bccc68b', '我的消息', '/isps/userAnnouncement', 'system/UserAnnouncementList', NULL, NULL, 1, NULL, NULL, 3, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-04-19 10:16:00', 'admin', '2019-12-25 09:54:34', 0, 0, NULL, 0);
INSERT INTO "base"."sys_permission" VALUES ('54097c6a3cf50fad0793a34beff1efdf', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线表单', '/online/cgformList/:code', 'modules/online/cgform/auto/OnlCgformAutoList', NULL, NULL, 1, NULL, NULL, 9, 0, NULL, 1, 1, NULL, 1, NULL, 'admin', '2019-03-19 16:03:06', 'admin', '2019-04-30 18:19:03', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('540a2936940846cb98114ffb0d145cb8', '', '列表页', '/list', 'layouts/PageView', NULL, '/list/query-list', 0, NULL, NULL, 9, 0, 'table', 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-03-31 22:20:20', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('54dd5457a3190740005c1bfec55b1c34', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '菜单管理', '/isystem/permission', 'system/PermissionList', NULL, NULL, 1, NULL, NULL, 1.3, 0, NULL, 1, 1, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-12-25 09:36:39', 0, 0, NULL, 0);
INSERT INTO "base"."sys_permission" VALUES ('58857ff846e61794c69208e9d3a85466', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '日志管理', '/isystem/log', 'system/LogList', NULL, NULL, 1, NULL, NULL, 1, 0, '', 1, 1, NULL, 0, NULL, NULL, '2018-12-26 10:11:18', 'admin', '2019-04-02 11:38:17', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('58b9204feaf07e47284ddb36cd2d8468', '2a470fc0c3954d9dbb61de6d80846549', '图片翻页', '/jeecg/imgTurnPage', 'jeecg/ImgTurnPage', NULL, NULL, 1, NULL, NULL, 4, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 11:36:42', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('5c2f42277948043026b7a14692456828', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '我的部门', '/isystem/departUserList', 'system/DepartUserList', NULL, NULL, 1, NULL, NULL, 2, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-04-17 15:12:24', 'admin', '2019-12-25 09:35:26', 0, 0, NULL, 0);
INSERT INTO "base"."sys_permission" VALUES ('5c8042bd6c601270b2bbd9b20bccc68b', '', '消息中心', '/message', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 6, 0, 'message', 1, 0, NULL, 0, NULL, 'admin', '2019-04-09 11:05:04', 'admin', '2019-04-11 19:47:54', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('6531cf3421b1265aeeeabaab5e176e6d', 'e3c13679c73a4f829bcff2aba8fd68b1', '分步表单', '/form/step-form', 'form/stepForm/StepForm', NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('655563cd64b75dcf52ef7bcdd4836953', '2a470fc0c3954d9dbb61de6d80846549', '图片预览', '/jeecg/ImagPreview', 'jeecg/ImagPreview', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-17 11:18:45', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('65a8f489f25a345836b7f44b1181197a', 'c65321e57b7949b7a975313220de0422', '403', '/exception/403', 'exception/403', NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('6ad53fd1b220989a8b71ff482d683a5a', '2a470fc0c3954d9dbb61de6d80846549', '一对多Tab示例', '/jeecg/tablist/JeecgOrderDMainList', 'jeecg/tablist/JeecgOrderDMainList', NULL, NULL, 1, NULL, NULL, 2, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-20 14:45:09', 'admin', '2019-02-21 16:26:21', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('6e73eb3c26099c191bf03852ee1310a1', '717f6bee46f44a3897eca9abd6e2ec44', '个人设置', '/account/settings/Index', 'account/settings/Index', NULL, NULL, 1, NULL, NULL, 2, 1, NULL, 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-04-19 09:41:05', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('700b7f95165c46cc7a78bf227aa8fed3', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '性能监控', '/monitor', 'layouts/RouteView', NULL, NULL, 1, NULL, NULL, 0, 0, NULL, 1, 0, NULL, 0, NULL, 'admin', '2019-04-02 11:34:34', 'admin', '2019-05-05 17:49:47', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('717f6bee46f44a3897eca9abd6e2ec44', '', '个人页', '/account', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 9, 0, 'user', 1, 0, 0, 1, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2020-02-23 22:41:37', 0, 0, NULL, 0);
INSERT INTO "base"."sys_permission" VALUES ('73678f9daa45ed17a3674131b03432fb', '540a2936940846cb98114ffb0d145cb8', '权限列表', '/list/permission-list', 'list/PermissionList', NULL, NULL, 1, NULL, NULL, 5, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('7593c9e3523a17bca83b8d7fe8a34e58', '3f915b2769fc80648e92d04e84ca059d', '添加用户按钮', '', NULL, NULL, NULL, 2, 'user:add', '1', 1, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-16 11:20:33', 'admin', '2019-05-17 18:31:25', 0, 0, '1', NULL);
INSERT INTO "base"."sys_permission" VALUES ('7960961b0063228937da5fa8dd73d371', '2a470fc0c3954d9dbb61de6d80846549', 'JEditableTable示例', '/jeecg/JEditableTable', 'jeecg/JeecgEditableTableExample', NULL, NULL, 1, NULL, NULL, 2.1, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-03-22 15:22:18', 'admin', '2019-12-25 09:48:16', 0, 0, NULL, 0);
INSERT INTO "base"."sys_permission" VALUES ('7ac9eb9ccbde2f7a033cd4944272bf1e', '540a2936940846cb98114ffb0d145cb8', '卡片列表', '/list/card', 'list/CardList', NULL, NULL, 1, NULL, NULL, 7, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('841057b8a1bef8f6b4b20f9a618a7fa6', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '数据日志', '/sys/dataLog-list', 'system/DataLogList', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-11 19:26:49', 'admin', '2019-03-12 11:40:47', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('882a73768cfd7f78f3a37584f7299656', '6e73eb3c26099c191bf03852ee1310a1', '个性化设置', '/account/settings/custom', 'account/settings/Custom', NULL, NULL, 1, 'CustomSettings', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-26 19:00:46', NULL, '2018-12-26 21:13:25', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('8b3bff2eee6f1939147f5c68292a1642', '700b7f95165c46cc7a78bf227aa8fed3', '服务器信息', '/monitor/SystemInfo', 'modules/monitor/SystemInfo', NULL, NULL, 1, NULL, NULL, 4, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 11:39:19', 'admin', '2019-04-02 15:40:02', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('8d1ebd663688965f1fd86a2f0ead3416', '700b7f95165c46cc7a78bf227aa8fed3', 'Redis监控', '/monitor/redis/info', 'modules/monitor/RedisInfo', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 13:11:33', 'admin', '2019-05-07 15:18:54', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('8d4683aacaa997ab86b966b464360338', 'e41b69c57a941a3bbcce45032fe57605', 'Online表单开发', '/online/cgform', 'modules/online/cgform/OnlCgformHeadList', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 1, 0, NULL, 0, NULL, 'admin', '2019-03-12 15:48:14', 'admin', '2019-06-11 14:19:17', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('8fb8172747a78756c11916216b8b8066', '717f6bee46f44a3897eca9abd6e2ec44', '工作台', '/dashboard/workplace', 'dashboard/Workplace', NULL, NULL, 1, NULL, NULL, 3, 0, NULL, 1, 1, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-04-02 11:45:02', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('944abf0a8fc22fe1f1154a389a574154', '5c8042bd6c601270b2bbd9b20bccc68b', '消息管理', '/modules/message/sysMessageList', 'modules/message/SysMessageList', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-09 11:27:53', 'admin', '2019-04-09 19:31:23', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('9502685863ab87f0ad1134142788a385', '', '首页', '/dashboard/analysis', 'dashboard/Analysis', NULL, NULL, 0, NULL, NULL, 0, 0, 'home', 1, 1, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-03-29 11:04:13', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('97c8629abc7848eccdb6d77c24bb3ebb', '700b7f95165c46cc7a78bf227aa8fed3', '磁盘监控', '/monitor/Disk', 'modules/monitor/DiskMonitoring', NULL, NULL, 1, NULL, NULL, 6, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 14:30:06', 'admin', '2019-05-05 14:37:14', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('9a90363f216a6a08f32eecb3f0bf12a3', '2a470fc0c3954d9dbb61de6d80846549', '自定义组件', '/jeecg/SelectDemo', 'jeecg/SelectDemo', NULL, NULL, 1, NULL, NULL, 0, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-03-19 11:19:05', 'admin', '2019-12-25 09:47:04', 0, 0, NULL, 0);
INSERT INTO "base"."sys_permission" VALUES ('9cb91b8851db0cf7b19d7ecc2a8193dd', '1939e035e803a99ceecb6f5563570fb2', '我的任务表单', '/modules/bpm/task/form/FormModule', 'modules/bpm/task/form/FormModule', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-08 16:49:05', 'admin', '2019-03-08 18:37:56', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('9fe26464838de2ea5e90f2367e35efa0', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线报表', '/online/cgreport/:code', 'modules/online/cgreport/auto/OnlCgreportAutoList', 'onlineAutoList', NULL, 1, NULL, NULL, 9, 0, NULL, 1, 1, NULL, 1, NULL, 'admin', '2019-03-12 11:06:48', 'admin', '2019-04-30 18:19:10', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('a400e4f4d54f79bf5ce160ae432231af', '2a470fc0c3954d9dbb61de6d80846549', '百度', 'http://www.baidu.com', 'layouts/IframePageView', NULL, NULL, 1, NULL, NULL, 4, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-01-29 19:44:06', 'admin', '2019-02-15 16:25:02', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('ae4fed059f67086fd52a73d913cf473d', '540a2936940846cb98114ffb0d145cb8', '内联编辑表格', '/list/edit-table', 'list/TableInnerEditList', NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('aedbf679b5773c1f25e9f7b10111da73', '08e6b9dc3c04489c8e1ff2ce6f105aa4', 'SQL监控', '{{ window._CONFIG[''domianURL''] }}/druid/', 'layouts/IframePageView', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-01-30 09:43:22', 'admin', '2019-03-23 19:00:46', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('b1cb0a3fedf7ed0e4653cb5a229837ee', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '定时任务', '/isystem/QuartzJobList', 'system/QuartzJobList', NULL, NULL, 1, NULL, NULL, 3, 0, NULL, 1, 1, NULL, 0, NULL, NULL, '2019-01-03 09:38:52', 'admin', '2019-04-02 10:24:13', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('b3c824fc22bd953e2eb16ae6914ac8f9', '4875ebe289344e14844d8e3ea1edd73f', '高级详情页', '/profile/advanced', 'profile/advanced/Advanced', NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('b4dfc7d5dd9e8d5b6dd6d4579b1aa559', 'c65321e57b7949b7a975313220de0422', '500', '/exception/500', 'exception/500', NULL, NULL, 1, NULL, NULL, 3, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('b6bcee2ccc854052d3cc3e9c96d90197', '71102b3b87fb07e5527bbd2c530dd90a', '加班申请', '/modules/extbpm/joa/JoaOvertimeList', 'modules/extbpm/joa/JoaOvertimeList', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-03 15:33:10', 'admin', '2019-04-03 15:34:48', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('c431130c0bc0ec71b0a5be37747bb36a', '2a470fc0c3954d9dbb61de6d80846549', '一对多JEditable', '/jeecg/JeecgOrderMainListForJEditableTable', 'jeecg/JeecgOrderMainListForJEditableTable', NULL, NULL, 1, NULL, NULL, 3, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-29 10:51:59', 'admin', '2019-04-04 20:09:39', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('c65321e57b7949b7a975313220de0422', NULL, '异常页', '/exception', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 8, NULL, 'warning', 1, 0, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('c6cf95444d80435eb37b2f9db3971ae6', '2a470fc0c3954d9dbb61de6d80846549', '数据回执模拟', '/jeecg/InterfaceTest', 'jeecg/InterfaceTest', NULL, NULL, 1, NULL, NULL, 6, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-19 16:02:23', 'admin', '2019-02-21 16:25:45', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('cc50656cf9ca528e6f2150eba4714ad2', '4875ebe289344e14844d8e3ea1edd73f', '基础详情页', '/profile/basic', 'profile/basic/Index', NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('d07a2c87a451434c99ab06296727ec4f', '700b7f95165c46cc7a78bf227aa8fed3', 'JVM信息', '/monitor/JvmInfo', 'modules/monitor/JvmInfo', NULL, NULL, 1, NULL, NULL, 4, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-01 23:07:48', 'admin', '2019-04-02 11:37:16', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('d2bbf9ebca5a8fa2e227af97d2da7548', 'c65321e57b7949b7a975313220de0422', '404', '/exception/404', 'exception/404', NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('d7d6e2e4e2934f2c9385a623fd98c6f3', '', '系统管理', '/isystem', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 4, 0, 'setting', 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-03-31 22:19:52', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('d86f58e7ab516d3bc6bfb1fe10585f97', '717f6bee46f44a3897eca9abd6e2ec44', '个人中心', '/account/center', 'account/center/Index', NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('de13e0f6328c069748de7399fcc1dbbd', 'fb07ca05a3e13674dbf6d3245956da2e', '搜索列表（项目）', '/list/search/project', 'list/TableList', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-12 14:01:40', 'admin', '2019-02-12 14:14:18', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('e08cb190ef230d5d4f03824198773950', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '系统通告', '/isystem/annountCement', 'system/SysAnnouncementList', NULL, NULL, 1, 'annountCement', NULL, 6, NULL, '', 1, 1, NULL, NULL, NULL, NULL, '2019-01-02 17:23:01', NULL, '2019-01-02 17:31:23', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('e1979bb53e9ea51cecc74d86fd9d2f64', '2a470fc0c3954d9dbb61de6d80846549', 'PDF预览', '/jeecg/jeecgPdfView', 'jeecg/JeecgPdfView', NULL, NULL, 1, NULL, NULL, 3, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 10:39:35', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('e3c13679c73a4f829bcff2aba8fd68b1', '', '表单页', '/form', 'layouts/PageView', NULL, NULL, 0, NULL, NULL, 9, 0, 'form', 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-03-31 22:20:14', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('e41b69c57a941a3bbcce45032fe57605', '', '在线开发', '/online', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 5, 0, 'cloud', 1, 0, NULL, 0, NULL, 'admin', '2019-03-08 10:43:10', 'admin', '2019-05-11 10:36:01', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('e5973686ed495c379d829ea8b2881fc6', 'e3c13679c73a4f829bcff2aba8fd68b1', '高级表单', '/form/advanced-form', 'form/advancedForm/AdvancedForm', NULL, NULL, 1, NULL, NULL, 3, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('e6bfd1fcabfd7942fdd05f076d1dad38', '2a470fc0c3954d9dbb61de6d80846549', '打印测试', '/jeecg/PrintDemo', 'jeecg/PrintDemo', NULL, NULL, 1, NULL, NULL, 3, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-19 15:58:48', 'admin', '2019-05-07 20:14:39', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('ebb9d82ea16ad864071158e0c449d186', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '分类字典', '/isys/category', 'system/SysCategoryList', NULL, NULL, 1, NULL, '1', 5.2, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-05-29 18:48:07', 'admin', '2020-02-23 22:45:33', 0, 0, '1', 0);
INSERT INTO "base"."sys_permission" VALUES ('ec8d607d0156e198b11853760319c646', '6e73eb3c26099c191bf03852ee1310a1', '安全设置', '/account/settings/security', 'account/settings/Security', NULL, NULL, 1, 'SecuritySettings', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-26 18:59:52', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('f0675b52d89100ee88472b6800754a08', '', '统计报表', '/report', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 1, 0, 'bar-chart', 1, 0, NULL, 0, NULL, 'admin', '2019-04-03 18:32:02', 'admin', '2019-05-19 18:34:13', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('f1cb187abf927c88b89470d08615f5ac', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '数据字典', '/isystem/dict', 'system/DictList', NULL, NULL, 1, NULL, NULL, 5, 0, NULL, 1, 1, 0, 0, NULL, NULL, '2018-12-28 13:54:43', 'admin', '2020-02-23 22:45:25', 0, 0, NULL, 0);
INSERT INTO "base"."sys_permission" VALUES ('f23d9bfff4d9aa6b68569ba2cff38415', '540a2936940846cb98114ffb0d145cb8', '标准列表', '/list/basic-list', 'list/StandardList', NULL, NULL, 1, NULL, NULL, 6, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('f2849d3814fc97993bfc519ae6bbf049', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO复制表单', '/online/copyform/:code', 'modules/online/cgform/OnlCgformCopyList', NULL, NULL, 1, NULL, '1', 1, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2019-08-29 16:05:37', NULL, NULL, 0, 0, '1', NULL);
INSERT INTO "base"."sys_permission" VALUES ('f780d0d3083d849ccbdb1b1baee4911d', '5c8042bd6c601270b2bbd9b20bccc68b', '模板管理', '/modules/message/sysMessageTemplateList', 'modules/message/SysMessageTemplateList', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-09 11:50:31', 'admin', '2019-04-12 10:16:34', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('fb07ca05a3e13674dbf6d3245956da2e', '540a2936940846cb98114ffb0d145cb8', '搜索列表', '/list/search', 'list/search/SearchLayout', NULL, '/list/search/article', 1, NULL, NULL, 8, 0, NULL, 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-02-12 15:09:13', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('fb367426764077dcf94640c843733985', '2a470fc0c3954d9dbb61de6d80846549', '一对多示例', '/jeecg/JeecgOrderMainList', 'jeecg/JeecgOrderMainList', NULL, NULL, 1, NULL, NULL, 2, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-15 16:24:11', 'admin', '2019-02-18 10:50:14', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('fba41089766888023411a978d13c0aa4', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO树表单列表', '/online/cgformTreeList/:code', 'modules/online/cgform/auto/OnlCgformTreeList', NULL, NULL, 1, NULL, '1', 9, 0, NULL, 1, 1, NULL, 1, NULL, 'admin', '2019-05-21 14:46:50', 'admin', '2019-06-11 13:52:52', 0, 0, '1', NULL);
INSERT INTO "base"."sys_permission" VALUES ('fc810a2267dd183e4ef7c71cc60f4670', '700b7f95165c46cc7a78bf227aa8fed3', '请求追踪', '/monitor/HttpTrace', 'modules/monitor/HttpTrace', NULL, NULL, 1, NULL, NULL, 4, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 09:46:19', 'admin', '2019-04-02 11:37:27', 0, 0, NULL, NULL);
INSERT INTO "base"."sys_permission" VALUES ('fedfbf4420536cacc0218557d263dfea', '6e73eb3c26099c191bf03852ee1310a1', '新消息通知', '/account/settings/notification', 'account/settings/Notification', NULL, NULL, 1, 'NotificationSettings', NULL, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, '2018-12-26 19:02:05', NULL, NULL, 0, 0, NULL, NULL);

-- ----------------------------
-- Table structure for sys_permission_data_rule
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_permission_data_rule";
CREATE TABLE "base"."sys_permission_data_rule" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "permission_id" varchar(32) COLLATE "pg_catalog"."default",
  "rule_name" varchar(50) COLLATE "pg_catalog"."default",
  "rule_column" varchar(50) COLLATE "pg_catalog"."default",
  "rule_conditions" varchar(50) COLLATE "pg_catalog"."default",
  "rule_value" varchar(300) COLLATE "pg_catalog"."default",
  "status" varchar(3) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."sys_permission_data_rule"."id" IS 'ID';
COMMENT ON COLUMN "base"."sys_permission_data_rule"."permission_id" IS '菜单ID';
COMMENT ON COLUMN "base"."sys_permission_data_rule"."rule_name" IS '规则名称';
COMMENT ON COLUMN "base"."sys_permission_data_rule"."rule_column" IS '字段';
COMMENT ON COLUMN "base"."sys_permission_data_rule"."rule_conditions" IS '条件';
COMMENT ON COLUMN "base"."sys_permission_data_rule"."rule_value" IS '规则值';
COMMENT ON COLUMN "base"."sys_permission_data_rule"."status" IS '权限有效状态1有0否';
COMMENT ON COLUMN "base"."sys_permission_data_rule"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."sys_permission_data_rule"."update_time" IS '修改时间';
COMMENT ON COLUMN "base"."sys_permission_data_rule"."update_by" IS '修改人';

-- ----------------------------
-- Records of sys_permission_data_rule
-- ----------------------------
INSERT INTO "base"."sys_permission_data_rule" VALUES ('32b62cb04d6c788d9d92e3ff5e66854e', '8d4683aacaa997ab86b966b464360338', '000', '00', '!=', '00', '1', '2019-04-02 18:36:08', 'admin', NULL, NULL);
INSERT INTO "base"."sys_permission_data_rule" VALUES ('40283181614231d401614234fe670003', '40283181614231d401614232cd1c0001', 'createBy', 'createBy', '=', '#{sys_user_code}', '1', '2018-01-29 21:57:04', 'admin', NULL, NULL);
INSERT INTO "base"."sys_permission_data_rule" VALUES ('4028318161424e730161424fca6f0004', '4028318161424e730161424f61510002', 'createBy', 'createBy', '=', '#{sys_user_code}', '1', '2018-01-29 22:26:20', 'admin', NULL, NULL);
INSERT INTO "base"."sys_permission_data_rule" VALUES ('402880e6487e661a01487e732c020005', '402889fb486e848101486e93a7c80014', 'SYS_ORG_CODE', 'SYS_ORG_CODE', 'LIKE', '010201%', '1', '2014-09-16 20:32:30', 'admin', NULL, NULL);
INSERT INTO "base"."sys_permission_data_rule" VALUES ('402880e6487e661a01487e8153ee0007', '402889fb486e848101486e93a7c80014', 'create_by', 'create_by', '', '#{SYS_USER_CODE}', '1', '2014-09-16 20:47:57', 'admin', NULL, NULL);
INSERT INTO "base"."sys_permission_data_rule" VALUES ('402880ec5ddec439015ddf9225060038', '40288088481d019401481d2fcebf000d', '复杂关系', '', 'USE_SQL_RULES', 'name like ''%张%'' or age > 10', '1', NULL, NULL, '2017-08-14 15:10:25', 'demo');
INSERT INTO "base"."sys_permission_data_rule" VALUES ('402880ec5ddfdd26015ddfe3e0570011', '4028ab775dca0d1b015dca3fccb60016', '复杂sql配置', '', 'USE_SQL_RULES', 'table_name like ''%test%'' or is_tree = ''Y''', '1', NULL, NULL, '2017-08-14 16:38:55', 'demo');
INSERT INTO "base"."sys_permission_data_rule" VALUES ('402880f25b1e2ac7015b1e5fdebc0012', '402880f25b1e2ac7015b1e5cdc340010', '只能看自己数据', 'create_by', '=', '#{sys_user_code}', '1', '2017-03-30 16:40:51', 'admin', NULL, NULL);
INSERT INTO "base"."sys_permission_data_rule" VALUES ('402881875b19f141015b19f8125e0014', '40288088481d019401481d2fcebf000d', '可看下属业务数据', 'sys_org_code', 'LIKE', '#{sys_org_code}', '1', NULL, NULL, '2017-08-14 15:04:32', 'demo');
INSERT INTO "base"."sys_permission_data_rule" VALUES ('402881e45394d66901539500a4450001', '402881e54df73c73014df75ab670000f', 'sysCompanyCode', 'sysCompanyCode', '=', '#{SYS_COMPANY_CODE}', '1', '2016-03-21 01:09:21', 'admin', NULL, NULL);
INSERT INTO "base"."sys_permission_data_rule" VALUES ('402881e45394d6690153950177cb0003', '402881e54df73c73014df75ab670000f', 'sysOrgCode', 'sysOrgCode', '=', '#{SYS_ORG_CODE}', '1', '2016-03-21 01:10:15', 'admin', NULL, NULL);
INSERT INTO "base"."sys_permission_data_rule" VALUES ('402881e56266f43101626727aff60067', '402881e56266f43101626724eb730065', '销售自己看自己的数据', 'createBy', '=', '#{sys_user_code}', '1', '2018-03-27 19:11:16', 'admin', NULL, NULL);
INSERT INTO "base"."sys_permission_data_rule" VALUES ('402881e56266f4310162672fb1a70082', '402881e56266f43101626724eb730065', '销售经理看所有下级数据', 'sysOrgCode', 'LIKE', '#{sys_org_code}', '1', '2018-03-27 19:20:01', 'admin', NULL, NULL);
INSERT INTO "base"."sys_permission_data_rule" VALUES ('402881e56266f431016267387c9f0088', '402881e56266f43101626724eb730065', '只看金额大于1000的数据', 'money', '>=', '1000', '1', '2018-03-27 19:29:37', 'admin', NULL, NULL);
INSERT INTO "base"."sys_permission_data_rule" VALUES ('402881f3650de25101650dfb5a3a0010', '402881e56266f4310162671d62050044', '22', '', 'USE_SQL_RULES', '22', '1', '2018-08-06 14:45:01', 'admin', NULL, NULL);
INSERT INTO "base"."sys_permission_data_rule" VALUES ('402889fb486e848101486e913cd6000b', '402889fb486e848101486e8e2e8b0007', 'userName', 'userName', '=', 'admin', '1', '2014-09-13 18:31:25', 'admin', NULL, NULL);
INSERT INTO "base"."sys_permission_data_rule" VALUES ('402889fb486e848101486e98d20d0016', '402889fb486e848101486e93a7c80014', 'title', 'title', '=', '12', '1', NULL, NULL, '2014-09-13 22:18:22', 'scott');
INSERT INTO "base"."sys_permission_data_rule" VALUES ('402889fe47fcb29c0147fcb6b6220001', '8a8ab0b246dc81120146dc8180fe002b', '12', '12', '>', '12', '1', '2014-08-22 15:55:38', '8a8ab0b246dc81120146dc8181950052', NULL, NULL);
INSERT INTO "base"."sys_permission_data_rule" VALUES ('4028ab775dca0d1b015dca4183530018', '4028ab775dca0d1b015dca3fccb60016', '表名限制', 'isDbSynch', '=', 'Y', '1', NULL, NULL, '2017-08-14 16:43:45', 'demo');
INSERT INTO "base"."sys_permission_data_rule" VALUES ('4028ef815595a881015595b0ccb60001', '40288088481d019401481d2fcebf000d', '限只能看自己', 'create_by', '=', '#{sys_user_code}', '1', NULL, NULL, '2017-08-14 15:03:56', 'demo');
INSERT INTO "base"."sys_permission_data_rule" VALUES ('4028ef81574ae99701574aed26530005', '4028ef81574ae99701574aeb97bd0003', '用户名', 'userName', '!=', 'admin', '1', '2016-09-21 12:07:18', 'admin', NULL, NULL);
INSERT INTO "base"."sys_permission_data_rule" VALUES ('53609e1854f4a87eb23ed23a18a1042c', '4148ec82b6acd69f470bea75fe41c357', '只看当前部门数据', 'sysOrgCode', '=', '#{sys_org_code}', '1', '2019-05-11 19:40:39', 'admin', '2019-05-11 19:40:50', 'admin');
INSERT INTO "base"."sys_permission_data_rule" VALUES ('a7d661ef5ac168b2b162420c6804dac5', '4148ec82b6acd69f470bea75fe41c357', '只看自己的数据', 'createBy', '=', '#{sys_user_code}', '1', '2019-05-11 19:19:05', 'admin', '2019-05-11 19:24:58', 'admin');
INSERT INTO "base"."sys_permission_data_rule" VALUES ('f852d85d47f224990147f2284c0c0005', NULL, '小于', 'test', '<=', '11', '1', '2014-08-20 14:43:52', '8a8ab0b246dc81120146dc8181950052', NULL, NULL);

-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_position";
CREATE TABLE "base"."sys_position" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(100) COLLATE "pg_catalog"."default",
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "post_rank" varchar(2) COLLATE "pg_catalog"."default",
  "company_id" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "sys_org_code" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."sys_position"."code" IS '职务编码';
COMMENT ON COLUMN "base"."sys_position"."name" IS '职务名称';
COMMENT ON COLUMN "base"."sys_position"."post_rank" IS '职级';
COMMENT ON COLUMN "base"."sys_position"."company_id" IS '公司id';
COMMENT ON COLUMN "base"."sys_position"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."sys_position"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."sys_position"."update_by" IS '修改人';
COMMENT ON COLUMN "base"."sys_position"."update_time" IS '修改时间';
COMMENT ON COLUMN "base"."sys_position"."sys_org_code" IS '组织机构编码';

-- ----------------------------
-- Records of sys_position
-- ----------------------------
INSERT INTO "base"."sys_position" VALUES ('1185040064792571906', 'devleader', '研发部经理', '2', NULL, 'admin', '2019-10-18 11:49:03', 'admin', '2020-02-23 22:55:42', 'A01');
INSERT INTO "base"."sys_position" VALUES ('1256485574212153345', '总经理', 'laozong', '5', NULL, 'admin', '2020-05-02 15:28:00', 'admin', '2020-05-02 15:28:03', '云麓');

-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_quartz_job";
CREATE TABLE "base"."sys_quartz_job" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "del_flag" int4,
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "job_class_name" varchar(255) COLLATE "pg_catalog"."default",
  "cron_expression" varchar(255) COLLATE "pg_catalog"."default",
  "parameter" varchar(255) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "status" int4
)
;
COMMENT ON COLUMN "base"."sys_quartz_job"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."sys_quartz_job"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."sys_quartz_job"."del_flag" IS '删除状态';
COMMENT ON COLUMN "base"."sys_quartz_job"."update_by" IS '修改人';
COMMENT ON COLUMN "base"."sys_quartz_job"."update_time" IS '修改时间';
COMMENT ON COLUMN "base"."sys_quartz_job"."job_class_name" IS '任务类名';
COMMENT ON COLUMN "base"."sys_quartz_job"."cron_expression" IS 'cron表达式';
COMMENT ON COLUMN "base"."sys_quartz_job"."parameter" IS '参数';
COMMENT ON COLUMN "base"."sys_quartz_job"."description" IS '描述';
COMMENT ON COLUMN "base"."sys_quartz_job"."status" IS '状态 0正常 -1停止';

-- ----------------------------
-- Records of sys_quartz_job
-- ----------------------------
INSERT INTO "base"."sys_quartz_job" VALUES ('df26ecacf0f75d219d746750fe84bbee', NULL, NULL, 0, 'admin', '2020-05-02 15:40:35', 'org.jeecg.modules.quartz.job.SampleParamJob', '0/1 * * * * ?', 'scott', '带参测试 后台将每隔1秒执行输出日志', -1);
INSERT INTO "base"."sys_quartz_job" VALUES ('a253cdfc811d69fa0efc70d052bc8128', 'admin', '2019-03-30 12:44:48', 0, 'admin', '2020-05-02 15:48:49', 'org.jeecg.modules.quartz.job.SampleJob', '0/1 * * * * ?', NULL, NULL, -1);
INSERT INTO "base"."sys_quartz_job" VALUES ('5b3d2c087ad41aa755fc4f89697b01e7', 'admin', '2019-04-11 19:04:21', 0, 'admin', '2020-05-02 15:48:48', 'org.jeecg.modules.message.job.SendMsgJob', '0/50 * * * * ? *', NULL, NULL, -1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_role";
CREATE TABLE "base"."sys_role" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "role_name" varchar(200) COLLATE "pg_catalog"."default",
  "role_code" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "base"."sys_role"."id" IS '主键id';
COMMENT ON COLUMN "base"."sys_role"."role_name" IS '角色名称';
COMMENT ON COLUMN "base"."sys_role"."role_code" IS '角色编码';
COMMENT ON COLUMN "base"."sys_role"."description" IS '描述';
COMMENT ON COLUMN "base"."sys_role"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."sys_role"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."sys_role"."update_by" IS '更新人';
COMMENT ON COLUMN "base"."sys_role"."update_time" IS '更新时间';
COMMENT ON TABLE "base"."sys_role" IS '角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO "base"."sys_role" VALUES ('1169504891467464705', '第三方登录角色', 'third_role', '第三方登录角色', 'admin', '2019-09-05 14:57:49', 'admin', '2020-05-02 18:20:58');
INSERT INTO "base"."sys_role" VALUES ('e51758fa916c881624b046d26bd09230', '人力资源部', 'hr', NULL, 'admin', '2019-01-21 18:07:24', 'admin', '2019-10-18 11:39:43');
INSERT INTO "base"."sys_role" VALUES ('ee8626f80f7c2619917b6236f3a7f02b', '临时角色', 'test', '这是新建的临时角色123', NULL, '2018-12-20 10:59:04', 'admin', '2019-02-19 15:08:37');
INSERT INTO "base"."sys_role" VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '管理员', 'admin', '管理员', NULL, '2018-12-21 18:03:39', 'admin', '2019-05-20 11:40:26');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_role_permission";
CREATE TABLE "base"."sys_role_permission" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "role_id" varchar(32) COLLATE "pg_catalog"."default",
  "permission_id" varchar(32) COLLATE "pg_catalog"."default",
  "data_rule_ids" varchar(1000) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."sys_role_permission"."role_id" IS '角色id';
COMMENT ON COLUMN "base"."sys_role_permission"."permission_id" IS '权限id';
COMMENT ON TABLE "base"."sys_role_permission" IS '角色权限表';

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO "base"."sys_role_permission" VALUES ('00b0748f04d3ea52c8cfa179c1c9d384', '52b0cf022ac4187b2a70dfa4f8b2d940', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('00b82058779cca5106fbb84783534c9b', 'f6817f48af4fb3af11b9e8bf182f618b', '4148ec82b6acd69f470bea75fe41c357', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('0254c0b25694ad5479e6d6935bbc176e', 'f6817f48af4fb3af11b9e8bf182f618b', '944abf0a8fc22fe1f1154a389a574154', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('09bd4fc30ffe88c4a44ed3868f442719', 'f6817f48af4fb3af11b9e8bf182f618b', 'e6bfd1fcabfd7942fdd05f076d1dad38', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('0c2d2db76ee3aa81a4fe0925b0f31365', 'f6817f48af4fb3af11b9e8bf182f618b', '024f1fd1283dc632458976463d8984e1', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('0c6b8facbb1cc874964c87a8cf01e4b1', 'f6817f48af4fb3af11b9e8bf182f618b', '841057b8a1bef8f6b4b20f9a618a7fa6', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('0c6e1075e422972083c3e854d9af7851', 'f6817f48af4fb3af11b9e8bf182f618b', '08e6b9dc3c04489c8e1ff2ce6f105aa4', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('0d9d14bc66e9d5e99b0280095fdc8587', 'ee8626f80f7c2619917b6236f3a7f02b', '277bfabef7d76e89b33062b16a9a5020', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('0dec36b68c234767cd35466efef3b941', 'ee8626f80f7c2619917b6236f3a7f02b', '54dd5457a3190740005c1bfec55b1c34', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('0e1469997af2d3b97fff56a59ee29eeb', 'f6817f48af4fb3af11b9e8bf182f618b', 'e41b69c57a941a3bbcce45032fe57605', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('0f861cb988fdc639bb1ab943471f3a72', 'f6817f48af4fb3af11b9e8bf182f618b', '97c8629abc7848eccdb6d77c24bb3ebb', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('105c2ac10741e56a618a82cd58c461d7', 'e51758fa916c881624b046d26bd09230', '1663f3faba244d16c94552f849627d84', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('115a6673ae6c0816d3f60de221520274', '21c5a3187763729408b40afb0d0fdfa8', '63b551e81c5956d5c861593d366d8c57', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1185039870491439105', 'f6817f48af4fb3af11b9e8bf182f618b', '1174506953255182338', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1185039870529187841', 'f6817f48af4fb3af11b9e8bf182f618b', '1174590283938041857', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1185039870537576450', 'f6817f48af4fb3af11b9e8bf182f618b', '1166535831146504193', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1197431682208206850', 'f6817f48af4fb3af11b9e8bf182f618b', '1192318987661234177', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1197795315916271617', 'f6817f48af4fb3af11b9e8bf182f618b', '109c78a583d4693ce2f16551b7786786', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1197795316268593154', 'f6817f48af4fb3af11b9e8bf182f618b', '9fe26464838de2ea5e90f2367e35efa0', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1209423530518761473', 'f6817f48af4fb3af11b9e8bf182f618b', '1205097455226462210', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1209423530594258945', 'f6817f48af4fb3af11b9e8bf182f618b', '1205098241075453953', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1209423530606841858', 'f6817f48af4fb3af11b9e8bf182f618b', '1205306106780364802', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1209423580355481602', 'f6817f48af4fb3af11b9e8bf182f618b', '190c2b43bec6a5f7a4194a85db67d96a', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1209654501558046722', 'f6817f48af4fb3af11b9e8bf182f618b', 'f2849d3814fc97993bfc519ae6bbf049', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1231590078632955905', 'f6817f48af4fb3af11b9e8bf182f618b', '1224641973866467330', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1231590078658121729', 'f6817f48af4fb3af11b9e8bf182f618b', '1209731624921534465', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1231590078662316033', 'f6817f48af4fb3af11b9e8bf182f618b', '1229674163694841857', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1232123957949304833', 'ee8626f80f7c2619917b6236f3a7f02b', 'f0675b52d89100ee88472b6800754a08', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1232123957978664962', 'ee8626f80f7c2619917b6236f3a7f02b', '1232123780958064642', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1232123957978664963', 'ee8626f80f7c2619917b6236f3a7f02b', '020b06793e4de2eee0007f603000c769', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1232123957987053570', 'ee8626f80f7c2619917b6236f3a7f02b', '2aeddae571695cd6380f6d6d334d6e7d', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1232124727411150850', 'f6817f48af4fb3af11b9e8bf182f618b', '1232123780958064642', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1232125488694104066', 'ee8626f80f7c2619917b6236f3a7f02b', 'e41b69c57a941a3bbcce45032fe57605', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('126ea9faebeec2b914d6d9bef957afb6', 'f6817f48af4fb3af11b9e8bf182f618b', 'f1cb187abf927c88b89470d08615f5ac', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('145eac8dd88eddbd4ce0a800ab40a92c', 'e51758fa916c881624b046d26bd09230', '08e6b9dc3c04489c8e1ff2ce6f105aa4', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('154edd0599bd1dc2c7de220b489cd1e2', 'f6817f48af4fb3af11b9e8bf182f618b', '7ac9eb9ccbde2f7a033cd4944272bf1e', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('165acd6046a0eaf975099f46a3c898ea', 'f6817f48af4fb3af11b9e8bf182f618b', '4f66409ef3bbd69c1d80469d6e2a885e', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1664b92dff13e1575e3a929caa2fa14d', 'f6817f48af4fb3af11b9e8bf182f618b', 'd2bbf9ebca5a8fa2e227af97d2da7548', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('16ef8ed3865ccc6f6306200760896c50', 'ee8626f80f7c2619917b6236f3a7f02b', 'e8af452d8948ea49d37c934f5100ae6a', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('17ead5b7d97ed365398ab20009a69ea3', '52b0cf022ac4187b2a70dfa4f8b2d940', 'e08cb190ef230d5d4f03824198773950', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1ac1688ef8456f384091a03d88a89ab1', '52b0cf022ac4187b2a70dfa4f8b2d940', '693ce69af3432bd00be13c3971a57961', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1af4babaa4227c3cbb830bc5eb513abb', 'ee8626f80f7c2619917b6236f3a7f02b', 'e08cb190ef230d5d4f03824198773950', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1ba162bbc2076c25561f8622f610d5bf', 'ee8626f80f7c2619917b6236f3a7f02b', 'aedbf679b5773c1f25e9f7b10111da73', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1c1dbba68ef1817e7fb19c822d2854e8', 'f6817f48af4fb3af11b9e8bf182f618b', 'fb367426764077dcf94640c843733985', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1c55c4ced20765b8ebab383caa60f0b6', 'e51758fa916c881624b046d26bd09230', 'fb367426764077dcf94640c843733985', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1e099baeae01b747d67aca06bdfc34d1', 'e51758fa916c881624b046d26bd09230', '6ad53fd1b220989a8b71ff482d683a5a', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1e47db875601fd97723254046b5bba90', 'f6817f48af4fb3af11b9e8bf182f618b', 'baf16b7174bd821b6bab23fa9abb200d', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('1fe4d408b85f19618c15bcb768f0ec22', '1750a8fb3e6d90cb7957c02de1dc8e59', '9502685863ab87f0ad1134142788a385', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('20e53c87a785688bdc0a5bb6de394ef1', 'f6817f48af4fb3af11b9e8bf182f618b', '540a2936940846cb98114ffb0d145cb8', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('248d288586c6ff3bd14381565df84163', '52b0cf022ac4187b2a70dfa4f8b2d940', '3f915b2769fc80648e92d04e84ca059d', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('25491ecbd5a9b34f09c8bc447a10ede1', 'f6817f48af4fb3af11b9e8bf182f618b', 'd07a2c87a451434c99ab06296727ec4f', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('25f5443f19c34d99718a016d5f54112e', 'ee8626f80f7c2619917b6236f3a7f02b', '6e73eb3c26099c191bf03852ee1310a1', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('27489816708b18859768dfed5945c405', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '9502685863ab87f0ad1134142788a385', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('2779cdea8367fff37db26a42c1a1f531', 'f6817f48af4fb3af11b9e8bf182f618b', 'fef097f3903caf3a3c3a6efa8de43fbb', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('296f9c75ca0e172ae5ce4c1022c996df', '646c628b2b8295fbdab2d34044de0354', '732d48f8e0abe99fe6a23d18a3171cd1', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('29fb4d37aa29b9fa400f389237cf9fe7', 'ee8626f80f7c2619917b6236f3a7f02b', '05b3c82ddb2536a4a5ee1a4c46b5abef', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('29fb6b0ad59a7e911c8d27e0bdc42d23', 'f6817f48af4fb3af11b9e8bf182f618b', '9a90363f216a6a08f32eecb3f0bf12a3', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('2ad37346c1b83ddeebc008f6987b2227', 'f6817f48af4fb3af11b9e8bf182f618b', '8d1ebd663688965f1fd86a2f0ead3416', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('2c462293cbb0eab7e8ae0a3600361b5f', '52b0cf022ac4187b2a70dfa4f8b2d940', '9502685863ab87f0ad1134142788a385', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('2dc1a0eb5e39aaa131ddd0082a492d76', 'ee8626f80f7c2619917b6236f3a7f02b', '08e6b9dc3c04489c8e1ff2ce6f105aa4', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('2ea2382af618ba7d1e80491a0185fb8a', 'ee8626f80f7c2619917b6236f3a7f02b', 'f23d9bfff4d9aa6b68569ba2cff38415', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('2fcfa2ac3dcfadc7c67107dae9a0de6d', 'ee8626f80f7c2619917b6236f3a7f02b', '73678f9daa45ed17a3674131b03432fb', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('2fdaed22dfa4c8d4629e44ef81688c6a', '52b0cf022ac4187b2a70dfa4f8b2d940', 'aedbf679b5773c1f25e9f7b10111da73', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('300c462b7fec09e2ff32574ef8b3f0bd', '52b0cf022ac4187b2a70dfa4f8b2d940', '2a470fc0c3954d9dbb61de6d80846549', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('326181da3248a62a05e872119a462be1', 'ee8626f80f7c2619917b6236f3a7f02b', '3f915b2769fc80648e92d04e84ca059d', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('3369650f5072b330543f8caa556b1b33', 'e51758fa916c881624b046d26bd09230', 'a400e4f4d54f79bf5ce160ae432231af', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('35a7e156c20e93aa7e825fe514bf9787', 'e51758fa916c881624b046d26bd09230', 'c6cf95444d80435eb37b2f9db3971ae6', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('35ac7cae648de39eb56213ca1b649713', '52b0cf022ac4187b2a70dfa4f8b2d940', 'b1cb0a3fedf7ed0e4653cb5a229837ee', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('37112f4d372541e105473f18da3dc50d', 'ee8626f80f7c2619917b6236f3a7f02b', 'a400e4f4d54f79bf5ce160ae432231af', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('37789f70cd8bd802c4a69e9e1f633eaa', 'ee8626f80f7c2619917b6236f3a7f02b', 'ae4fed059f67086fd52a73d913cf473d', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('381504a717cb3ce77dcd4070c9689a7e', 'ee8626f80f7c2619917b6236f3a7f02b', '4f84f9400e5e92c95f05b554724c2b58', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('38a2e55db0960262800576e34b3af44c', 'f6817f48af4fb3af11b9e8bf182f618b', '5c2f42277948043026b7a14692456828', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('38dd7a19711e7ffe864232954c06fae9', 'e51758fa916c881624b046d26bd09230', 'd2bbf9ebca5a8fa2e227af97d2da7548', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('3b1886f727ac503c93fecdd06dcb9622', 'f6817f48af4fb3af11b9e8bf182f618b', 'c431130c0bc0ec71b0a5be37747bb36a', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('3de2a60c7e42a521fecf6fcc5cb54978', 'f6817f48af4fb3af11b9e8bf182f618b', '2d83d62bd2544b8994c8f38cf17b0ddf', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('3e4e38f748b8d87178dd62082e5b7b60', 'f6817f48af4fb3af11b9e8bf182f618b', '7960961b0063228937da5fa8dd73d371', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('3e563751942b0879c88ca4de19757b50', '1750a8fb3e6d90cb7957c02de1dc8e59', '58857ff846e61794c69208e9d3a85466', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('3f1d04075e3c3254666a4138106a4e51', 'f6817f48af4fb3af11b9e8bf182f618b', '3fac0d3c9cd40fa53ab70d4c583821f8', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('412e2de37a35b3442d68db8dd2f3c190', '52b0cf022ac4187b2a70dfa4f8b2d940', 'f1cb187abf927c88b89470d08615f5ac', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('4204f91fb61911ba8ce40afa7c02369f', 'f6817f48af4fb3af11b9e8bf182f618b', '3f915b2769fc80648e92d04e84ca059d', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('439568ff7db6f329bf6dd45b3dfc9456', 'f6817f48af4fb3af11b9e8bf182f618b', '7593c9e3523a17bca83b8d7fe8a34e58', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('444126230885d5d38b8fa6072c9f43f8', 'f6817f48af4fb3af11b9e8bf182f618b', 'f780d0d3083d849ccbdb1b1baee4911d', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('445656dd187bd8a71605f4bbab1938a3', 'f6817f48af4fb3af11b9e8bf182f618b', '020b06793e4de2eee0007f603000c769', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('44b5a73541bcb854dd5d38c6d1fb93a1', 'ee8626f80f7c2619917b6236f3a7f02b', '418964ba087b90a84897b62474496b93', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('455cdb482457f529b79b479a2ff74427', 'f6817f48af4fb3af11b9e8bf182f618b', 'e1979bb53e9ea51cecc74d86fd9d2f64', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('459aa2e7021b435b4d65414cfbc71c66', 'e51758fa916c881624b046d26bd09230', '4148ec82b6acd69f470bea75fe41c357', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('45a358bb738782d1a0edbf7485e81459', 'f6817f48af4fb3af11b9e8bf182f618b', '0ac2ad938963b6c6d1af25477d5b8b51', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('4c0940badae3ef9231ee9d042338f2a4', 'e51758fa916c881624b046d26bd09230', '2a470fc0c3954d9dbb61de6d80846549', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('4d56ce2f67c94b74a1d3abdbea340e42', 'ee8626f80f7c2619917b6236f3a7f02b', 'd86f58e7ab516d3bc6bfb1fe10585f97', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('4dab5a06acc8ef3297889872caa74747', 'f6817f48af4fb3af11b9e8bf182f618b', 'ffb423d25cc59dcd0532213c4a518261', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('4e0a37ed49524df5f08fc6593aee875c', 'f6817f48af4fb3af11b9e8bf182f618b', 'f23d9bfff4d9aa6b68569ba2cff38415', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('4ea403fc1d19feb871c8bdd9f94a4ecc', 'f6817f48af4fb3af11b9e8bf182f618b', '2e42e3835c2b44ec9f7bc26c146ee531', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('4f254549d9498f06f4cc9b23f3e2c070', 'f6817f48af4fb3af11b9e8bf182f618b', '93d5cfb4448f11e9916698e7f462b4b6', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('4f2fd4a190db856e21476de2704bbd99', 'f6817f48af4fb3af11b9e8bf182f618b', '1a0811914300741f4e11838ff37a1d3a', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('4faad8ff93cb2b5607cd3d07c1b624ee', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '70b8f33da5f39de1981bf89cf6c99792', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('504e326de3f03562cdd186748b48a8c7', 'f6817f48af4fb3af11b9e8bf182f618b', '027aee69baee98a0ed2e01806e89c891', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('520b5989e6fe4a302a573d4fee12a40a', 'f6817f48af4fb3af11b9e8bf182f618b', '6531cf3421b1265aeeeabaab5e176e6d', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('54fdf85e52807bdb32ce450814abc256', 'f6817f48af4fb3af11b9e8bf182f618b', 'cc50656cf9ca528e6f2150eba4714ad2', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('57c0b3a547b815ea3ec8e509b08948b3', '1750a8fb3e6d90cb7957c02de1dc8e59', '3f915b2769fc80648e92d04e84ca059d', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('593ee05c4fe4645c7826b7d5e14f23ec', '52b0cf022ac4187b2a70dfa4f8b2d940', '8fb8172747a78756c11916216b8b8066', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('5affc85021fcba07d81c09a6fdfa8dc6', 'ee8626f80f7c2619917b6236f3a7f02b', '078f9558cdeab239aecb2bda1a8ed0d1', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('5d230e6cd2935c4117f6cb9a7a749e39', 'f6817f48af4fb3af11b9e8bf182f618b', 'fc810a2267dd183e4ef7c71cc60f4670', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('5de6871fadb4fe1cdd28989da0126b07', 'f6817f48af4fb3af11b9e8bf182f618b', 'a400e4f4d54f79bf5ce160a3432231af', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('5e4015a9a641cbf3fb5d28d9f885d81a', 'f6817f48af4fb3af11b9e8bf182f618b', '2dbbafa22cda07fa5d169d741b81fe12', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('5e634a89f75b7a421c02aecfd520325f', 'e51758fa916c881624b046d26bd09230', '339329ed54cf255e1f9392e84f136901', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('5e74637c4bec048d1880ad0bd1b00552', 'e51758fa916c881624b046d26bd09230', 'a400e4f4d54f79bf5ce160a3432231af', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('5fc194b709336d354640fe29fefd65a3', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '9ba60e626bf2882c31c488aba62b89f0', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('60eda4b4db138bdb47edbe8e10e71675', 'f6817f48af4fb3af11b9e8bf182f618b', 'fb07ca05a3e13674dbf6d3245956da2e', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('61835e48f3e675f7d3f5c9dd3a10dcf3', 'f6817f48af4fb3af11b9e8bf182f618b', 'f0675b52d89100ee88472b6800754a08', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('6451dac67ba4acafb570fd6a03f47460', 'ee8626f80f7c2619917b6236f3a7f02b', 'e3c13679c73a4f829bcff2aba8fd68b1', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('660fbc40bcb1044738f7cabdf1708c28', 'f6817f48af4fb3af11b9e8bf182f618b', 'b3c824fc22bd953e2eb16ae6914ac8f9', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('66b202f8f84fe766176b3f51071836ef', 'f6817f48af4fb3af11b9e8bf182f618b', '1367a93f2c410b169faa7abcbad2f77c', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('6b605c261ffbc8ac8a98ae33579c8c78', 'f6817f48af4fb3af11b9e8bf182f618b', 'fba41089766888023411a978d13c0aa4', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('6c43fd3f10fdaf2a0646434ae68709b5', 'ee8626f80f7c2619917b6236f3a7f02b', '540a2936940846cb98114ffb0d145cb8', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('6c74518eb6bb9a353f6a6c459c77e64b', 'f6817f48af4fb3af11b9e8bf182f618b', 'b4dfc7d5dd9e8d5b6dd6d4579b1aa559', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('6daddafacd7eccb91309530c17c5855d', 'f6817f48af4fb3af11b9e8bf182f618b', 'edfa74d66e8ea63ea432c2910837b150', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('6fb4c2142498dd6d5b6c014ef985cb66', 'f6817f48af4fb3af11b9e8bf182f618b', '6e73eb3c26099c191bf03852ee1310a1', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('71a5f54a90aa8c7a250a38b7dba39f6f', 'ee8626f80f7c2619917b6236f3a7f02b', '8fb8172747a78756c11916216b8b8066', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('737d35f582036cd18bfd4c8e5748eaa4', 'e51758fa916c881624b046d26bd09230', '693ce69af3432bd00be13c3971a57961', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('7413acf23b56c906aedb5a36fb75bd3a', 'f6817f48af4fb3af11b9e8bf182f618b', 'a4fc7b64b01a224da066bb16230f9c5a', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('75002588591820806', '16457350655250432', '5129710648430592', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('75002588604403712', '16457350655250432', '5129710648430593', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('75002588612792320', '16457350655250432', '40238597734928384', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('75002588625375232', '16457350655250432', '57009744761589760', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('75002588633763840', '16457350655250432', '16392452747300864', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('75002588637958144', '16457350655250432', '16392767785668608', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('75002588650541056', '16457350655250432', '16439068543946752', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('76a54a8cc609754360bf9f57e7dbb2db', 'f6817f48af4fb3af11b9e8bf182f618b', 'c65321e57b7949b7a975313220de0422', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277779875336192', '496138616573952', '5129710648430592', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780043108352', '496138616573952', '5129710648430593', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780055691264', '496138616573952', '15701400130424832', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780064079872', '496138616573952', '16678126574637056', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780072468480', '496138616573952', '15701915807518720', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780076662784', '496138616573952', '15708892205944832', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780085051392', '496138616573952', '16678447719911424', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780089245696', '496138616573952', '25014528525733888', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780097634304', '496138616573952', '56898976661639168', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780135383040', '496138616573952', '40238597734928384', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780139577344', '496138616573952', '45235621697949696', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780147965952', '496138616573952', '45235787867885568', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780156354560', '496138616573952', '45235939278065664', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780164743168', '496138616573952', '43117268627886080', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780168937472', '496138616573952', '45236734832676864', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780181520384', '496138616573952', '45237010692050944', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780189908992', '496138616573952', '45237170029465600', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780198297600', '496138616573952', '57009544286441472', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780206686208', '496138616573952', '57009744761589760', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780215074816', '496138616573952', '57009981228060672', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780219269120', '496138616573952', '56309618086776832', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780227657728', '496138616573952', '57212882168844288', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780236046336', '496138616573952', '61560041605435392', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780244434944', '496138616573952', '61560275261722624', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780257017856', '496138616573952', '61560480518377472', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780265406464', '496138616573952', '44986029924421632', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780324126720', '496138616573952', '45235228800716800', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780332515328', '496138616573952', '45069342940860416', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780340903937', '496138616573952', '5129710648430594', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780349292544', '496138616573952', '16687383932047360', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780357681152', '496138616573952', '16689632049631232', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780366069760', '496138616573952', '16689745006432256', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780370264064', '496138616573952', '16689883993083904', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780374458369', '496138616573952', '16690313745666048', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780387041280', '496138616573952', '5129710648430595', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780395429888', '496138616573952', '16694861252005888', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780403818496', '496138616573952', '16695107491205120', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780412207104', '496138616573952', '16695243126607872', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780420595712', '496138616573952', '75002207560273920', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780428984320', '496138616573952', '76215889006956544', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780433178624', '496138616573952', '76216071333351424', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780441567232', '496138616573952', '76216264070008832', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780449955840', '496138616573952', '76216459709124608', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780458344448', '496138616573952', '76216594207870976', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780466733056', '496138616573952', '76216702639017984', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780475121664', '496138616573952', '58480609315524608', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780483510272', '496138616573952', '61394706252173312', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780491898880', '496138616573952', '61417744146370560', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780496093184', '496138616573952', '76606430504816640', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780504481792', '496138616573952', '76914082455752704', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780508676097', '496138616573952', '76607201262702592', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780517064704', '496138616573952', '39915540965232640', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780525453312', '496138616573952', '41370251991977984', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780538036224', '496138616573952', '45264987354042368', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780546424832', '496138616573952', '45265487029866496', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780554813440', '496138616573952', '45265762415284224', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780559007744', '496138616573952', '45265886315024384', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780567396352', '496138616573952', '45266070000373760', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780571590656', '496138616573952', '41363147411427328', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780579979264', '496138616573952', '41363537456533504', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780588367872', '496138616573952', '41364927394353152', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780596756480', '496138616573952', '41371711400054784', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780605145088', '496138616573952', '41469219249852416', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780613533696', '496138616573952', '39916171171991552', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780621922304', '496138616573952', '39918482854252544', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780630310912', '496138616573952', '41373430515240960', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780718391296', '496138616573952', '41375330996326400', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780722585600', '496138616573952', '63741744973352960', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780730974208', '496138616573952', '42082442672082944', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780739362816', '496138616573952', '41376192166629376', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780747751424', '496138616573952', '41377034236071936', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780756140032', '496138616573952', '56911328312299520', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780764528640', '496138616573952', '41378916912336896', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780768722944', '496138616573952', '63482475359244288', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780772917249', '496138616573952', '64290663792906240', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780785500160', '496138616573952', '66790433014943744', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780789694464', '496138616573952', '42087054753927168', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780798083072', '496138616573952', '67027338952445952', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780806471680', '496138616573952', '67027909637836800', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780810665985', '496138616573952', '67042515441684480', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780823248896', '496138616573952', '67082402312228864', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780827443200', '496138616573952', '16392452747300864', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780835831808', '496138616573952', '16392767785668608', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780840026112', '496138616573952', '16438800255291392', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780844220417', '496138616573952', '16438962738434048', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277780852609024', '496138616573952', '16439068543946752', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860062040064', '496138616573953', '5129710648430592', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860070428672', '496138616573953', '5129710648430593', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860078817280', '496138616573953', '40238597734928384', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860091400192', '496138616573953', '43117268627886080', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860099788800', '496138616573953', '57009744761589760', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860112371712', '496138616573953', '56309618086776832', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860120760320', '496138616573953', '44986029924421632', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860129148928', '496138616573953', '5129710648430594', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860141731840', '496138616573953', '5129710648430595', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860150120448', '496138616573953', '75002207560273920', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860158509056', '496138616573953', '58480609315524608', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860162703360', '496138616573953', '76606430504816640', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860171091968', '496138616573953', '76914082455752704', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860179480576', '496138616573953', '76607201262702592', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860187869184', '496138616573953', '39915540965232640', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860196257792', '496138616573953', '41370251991977984', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860204646400', '496138616573953', '41363147411427328', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860208840704', '496138616573953', '41371711400054784', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860213035009', '496138616573953', '39916171171991552', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860221423616', '496138616573953', '39918482854252544', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860225617920', '496138616573953', '41373430515240960', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860234006528', '496138616573953', '41375330996326400', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860242395136', '496138616573953', '63741744973352960', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860250783744', '496138616573953', '42082442672082944', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860254978048', '496138616573953', '41376192166629376', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860263366656', '496138616573953', '41377034236071936', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860271755264', '496138616573953', '56911328312299520', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860313698304', '496138616573953', '41378916912336896', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860322086912', '496138616573953', '63482475359244288', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860326281216', '496138616573953', '64290663792906240', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860334669824', '496138616573953', '66790433014943744', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860343058432', '496138616573953', '42087054753927168', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860347252736', '496138616573953', '67027338952445952', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860351447041', '496138616573953', '67027909637836800', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860359835648', '496138616573953', '67042515441684480', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860364029952', '496138616573953', '67082402312228864', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860368224256', '496138616573953', '16392452747300864', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860372418560', '496138616573953', '16392767785668608', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860376612865', '496138616573953', '16438800255291392', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860385001472', '496138616573953', '16438962738434048', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('77277860389195776', '496138616573953', '16439068543946752', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('7750f9be48ee09cd561fce718219a3e2', 'ee8626f80f7c2619917b6236f3a7f02b', '882a73768cfd7f78f3a37584f7299656', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('7a5d31ba48fe3fb1266bf186dc5f7ba7', '52b0cf022ac4187b2a70dfa4f8b2d940', '58857ff846e61794c69208e9d3a85466', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('7a6bca9276c128309c80d21e795c66c6', 'f6817f48af4fb3af11b9e8bf182f618b', '54097c6a3cf50fad0793a34beff1efdf', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('7ca833caa5eac837b7200d8b6de8b2e3', 'f6817f48af4fb3af11b9e8bf182f618b', 'fedfbf4420536cacc0218557d263dfea', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('7d2ea745950be3357747ec7750c31c57', 'ee8626f80f7c2619917b6236f3a7f02b', '2a470fc0c3954d9dbb61de6d80846549', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('7de42bdc0b8c5446b7d428c66a7abc12', '52b0cf022ac4187b2a70dfa4f8b2d940', '54dd5457a3190740005c1bfec55b1c34', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('7e19d90cec0dd87aaef351b9ff8f4902', '646c628b2b8295fbdab2d34044de0354', 'f9d3f4f27653a71c52faa9fb8070fbe7', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('7f862c47003eb20e8bad05f506371f92', 'ee8626f80f7c2619917b6236f3a7f02b', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('812ed54661b1a24b81b58974691a73f5', 'e51758fa916c881624b046d26bd09230', 'e6bfd1fcabfd7942fdd05f076d1dad38', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('83f704524b21b6a3ae324b8736c65333', 'ee8626f80f7c2619917b6236f3a7f02b', '7ac9eb9ccbde2f7a033cd4944272bf1e', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('84d32474316a43b01256d6644e6e7751', 'ee8626f80f7c2619917b6236f3a7f02b', 'ec8d607d0156e198b11853760319c646', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('84eac2f113c23737128fb099d1d1da89', 'f6817f48af4fb3af11b9e8bf182f618b', '03dc3d93261dda19fc86dd7ca486c6cf', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('85755a6c0bdff78b3860b52d35310c7f', 'e51758fa916c881624b046d26bd09230', 'c65321e57b7949b7a975313220de0422', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('86060e2867a5049d8a80d9fe5d8bc28b', 'f6817f48af4fb3af11b9e8bf182f618b', '765dd244f37b804e3d00f475fd56149b', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('8703a2410cddb713c33232ce16ec04b9', 'ee8626f80f7c2619917b6236f3a7f02b', '1367a93f2c410b169faa7abcbad2f77c', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('884f147c20e003cc80ed5b7efa598cbe', 'f6817f48af4fb3af11b9e8bf182f618b', 'e5973686ed495c379d829ea8b2881fc6', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('885c1a827383e5b2c6c4f8ca72a7b493', 'ee8626f80f7c2619917b6236f3a7f02b', '4148ec82b6acd69f470bea75fe41c357', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('8a60df8d8b4c9ee5fa63f48aeee3ec00', '1750a8fb3e6d90cb7957c02de1dc8e59', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('8b09925bdc194ab7f3559cd3a7ea0507', 'f6817f48af4fb3af11b9e8bf182f618b', 'ebb9d82ea16ad864071158e0c449d186', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('8b1e326791375f325d3e6b797753b65e', 'ee8626f80f7c2619917b6236f3a7f02b', '2dbbafa22cda07fa5d169d741b81fe12', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('8ce1022dac4e558ff9694600515cf510', '1750a8fb3e6d90cb7957c02de1dc8e59', '08e6b9dc3c04489c8e1ff2ce6f105aa4', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('8d154c2382a8ae5c8d1b84bd38df2a93', 'f6817f48af4fb3af11b9e8bf182f618b', 'd86f58e7ab516d3bc6bfb1fe10585f97', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('8d848ca7feec5b7ebb3ecb32b2c8857a', '52b0cf022ac4187b2a70dfa4f8b2d940', '4148ec82b6acd69f470bea75fe41c357', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('8dd64f65a1014196078d0882f767cd85', 'f6817f48af4fb3af11b9e8bf182f618b', 'e3c13679c73a4f829bcff2aba8fd68b1', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('8e3dc1671abad4f3c83883b194d2e05a', 'f6817f48af4fb3af11b9e8bf182f618b', 'b1cb0a3fedf7ed0e4653cb5a229837ee', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('8eec2c510f1ac9c5eee26c041b1f00ca', 'ee8626f80f7c2619917b6236f3a7f02b', '58857ff846e61794c69208e9d3a85466', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('8f762ff80253f634b08cf59a77742ba4', 'ee8626f80f7c2619917b6236f3a7f02b', '9502685863ab87f0ad1134142788a385', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('903b790e6090414343502c6dc393b7c9', 'ee8626f80f7c2619917b6236f3a7f02b', 'de13e0f6328c069748de7399fcc1dbbd', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('905bf419332ebcb83863603b3ebe30f0', 'f6817f48af4fb3af11b9e8bf182f618b', '8fb8172747a78756c11916216b8b8066', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('90996d56357730e173e636b99fc48bea', 'ee8626f80f7c2619917b6236f3a7f02b', 'fb07ca05a3e13674dbf6d3245956da2e', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('90e1c607a0631364eec310f3cc4acebd', 'ee8626f80f7c2619917b6236f3a7f02b', '4f66409ef3bbd69c1d80469d6e2a885e', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('9264104cee9b10c96241d527b2d0346d', '1750a8fb3e6d90cb7957c02de1dc8e59', '54dd5457a3190740005c1bfec55b1c34', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('9380121ca9cfee4b372194630fce150e', 'f6817f48af4fb3af11b9e8bf182f618b', '65a8f489f25a345836b7f44b1181197a', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('94911fef73a590f6824105ebf9b6cab3', 'f6817f48af4fb3af11b9e8bf182f618b', '8b3bff2eee6f1939147f5c68292a1642', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('9700d20dbc1ae3cbf7de1c810b521fe6', 'f6817f48af4fb3af11b9e8bf182f618b', 'ec8d607d0156e198b11853760319c646', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('980171fda43adfe24840959b1d048d4d', 'f6817f48af4fb3af11b9e8bf182f618b', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('987c23b70873bd1d6dca52f30aafd8c2', 'f6817f48af4fb3af11b9e8bf182f618b', '00a2a0ae65cdca5e93209cdbde97cbe6', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('98f02353f91dd569e3c6b8fd6b4f4034', 'ee8626f80f7c2619917b6236f3a7f02b', '6531cf3421b1265aeeeabaab5e176e6d', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('9b2ad767f9861e64a20b097538feafd3', 'f6817f48af4fb3af11b9e8bf182f618b', '73678f9daa45ed17a3674131b03432fb', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('9d8772c310b675ae43eacdbc6c7fa04a', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '1663f3faba244d16c94552f849627d84', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('9d980ec0489040e631a9c24a6af42934', 'f6817f48af4fb3af11b9e8bf182f618b', '05b3c82ddb2536a4a5ee1a4c46b5abef', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('9f8311ecccd44e079723098cf2ffe1cc', '1750a8fb3e6d90cb7957c02de1dc8e59', '693ce69af3432bd00be13c3971a57961', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('a034ed7c38c996b880d3e78f586fe0ae', 'f6817f48af4fb3af11b9e8bf182f618b', 'c89018ea6286e852b424466fd92a2ffc', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('a098e2acc3f90316f161f6648d085640', 'ee8626f80f7c2619917b6236f3a7f02b', 'e6bfd1fcabfd7942fdd05f076d1dad38', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('a307a9349ad64a2eff8ab69582fa9be4', 'f6817f48af4fb3af11b9e8bf182f618b', '0620e402857b8c5b605e1ad9f4b89350', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('a5d25fdb3c62904a8474182706ce11a0', 'f6817f48af4fb3af11b9e8bf182f618b', '418964ba087b90a84897b62474496b93', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('a66feaaf128417ad762e946abccf27ec', 'ee8626f80f7c2619917b6236f3a7f02b', 'c6cf95444d80435eb37b2f9db3971ae6', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('a72c31a3913c736d4eca11d13be99183', 'e51758fa916c881624b046d26bd09230', 'a44c30db536349e91106223957e684eb', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('a7ab87eac0f8fafa2efa4b1f9351923f', 'ee8626f80f7c2619917b6236f3a7f02b', 'fedfbf4420536cacc0218557d263dfea', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('abdc324a2df9f13ee6e73d44c6e62bc8', 'ee8626f80f7c2619917b6236f3a7f02b', 'f1cb187abf927c88b89470d08615f5ac', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('acacce4417e5d7f96a9c3be2ded5b4be', 'f6817f48af4fb3af11b9e8bf182f618b', 'f9d3f4f27653a71c52faa9fb8070fbe7', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('ae1852fb349d8513eb3fdc173da3ee56', 'f6817f48af4fb3af11b9e8bf182f618b', '8d4683aacaa997ab86b966b464360338', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('aefc8c22e061171806e59cd222f6b7e1', '52b0cf022ac4187b2a70dfa4f8b2d940', 'e8af452d8948ea49d37c934f5100ae6a', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('af60ac8fafd807ed6b6b354613b9ccbc', 'f6817f48af4fb3af11b9e8bf182f618b', '58857ff846e61794c69208e9d3a85466', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('b0c8a20800b8bf1ebdd7be473bceb44f', 'f6817f48af4fb3af11b9e8bf182f618b', '58b9204feaf07e47284ddb36cd2d8468', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('b128ebe78fa5abb54a3a82c6689bdca3', 'f6817f48af4fb3af11b9e8bf182f618b', 'aedbf679b5773c1f25e9f7b10111da73', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('b131ebeafcfd059f3c7e542606ea9ff5', 'ee8626f80f7c2619917b6236f3a7f02b', 'e5973686ed495c379d829ea8b2881fc6', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('b21b07951bb547b09cc85624a841aea0', 'f6817f48af4fb3af11b9e8bf182f618b', '4356a1a67b564f0988a484f5531fd4d9', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('b2b2dcfff6986d3d7f890ea62d474651', 'ee8626f80f7c2619917b6236f3a7f02b', '200006f0edf145a2b50eacca07585451', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('b495a46fa0e0d4637abe0db7fd12fe1a', 'ee8626f80f7c2619917b6236f3a7f02b', '717f6bee46f44a3897eca9abd6e2ec44', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('b64c4ab9cd9a2ea8ac1e9db5fb7cf522', 'f6817f48af4fb3af11b9e8bf182f618b', '2aeddae571695cd6380f6d6d334d6e7d', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('bbec16ad016efec9ea2def38f4d3d9dc', 'f6817f48af4fb3af11b9e8bf182f618b', '13212d3416eb690c2e1d5033166ff47a', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('bd30561f141f07827b836878137fddd8', 'e51758fa916c881624b046d26bd09230', '65a8f489f25a345836b7f44b1181197a', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('be8e5a9080569e59863f20c4c57a8e22', 'f6817f48af4fb3af11b9e8bf182f618b', '22d6a3d39a59dd7ea9a30acfa6bfb0a5', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('bea2986432079d89203da888d99b3f16', 'f6817f48af4fb3af11b9e8bf182f618b', '54dd5457a3190740005c1bfec55b1c34', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('c09373ebfc73fb5740db5ff02cba4f91', 'f6817f48af4fb3af11b9e8bf182f618b', '339329ed54cf255e1f9392e84f136901', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('c56fb1658ee5f7476380786bf5905399', 'f6817f48af4fb3af11b9e8bf182f618b', 'de13e0f6328c069748de7399fcc1dbbd', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('c689539d20a445b0896270290c58d01f', 'e51758fa916c881624b046d26bd09230', '13212d3416eb690c2e1d5033166ff47a', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('c6fee38d293b9d0596436a0cbd205070', 'f6817f48af4fb3af11b9e8bf182f618b', '4f84f9400e5e92c95f05b554724c2b58', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('c8571839e6b14796e661f3e2843b80b6', 'ee8626f80f7c2619917b6236f3a7f02b', '45c966826eeff4c99b8f8ebfe74511fc', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('c90b0b01c7ca454d2a1cb7408563e696', 'f6817f48af4fb3af11b9e8bf182f618b', '882a73768cfd7f78f3a37584f7299656', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('c9d35261cccd67ab2932107a0967a7d7', 'e51758fa916c881624b046d26bd09230', 'b4dfc7d5dd9e8d5b6dd6d4579b1aa559', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('ced80e43584ce15e97bb07298e93020d', 'e51758fa916c881624b046d26bd09230', '45c966826eeff4c99b8f8ebfe74511fc', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('cf1feb1bf69eafc982295ad6c9c8d698', 'f6817f48af4fb3af11b9e8bf182f618b', 'a2b11669e98c5fe54a53c3e3c4f35d14', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('cf2ef620217673e4042f695743294f01', 'f6817f48af4fb3af11b9e8bf182f618b', '717f6bee46f44a3897eca9abd6e2ec44', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('cf43895aef7fc684669483ab00ef2257', 'f6817f48af4fb3af11b9e8bf182f618b', '700b7f95165c46cc7a78bf227aa8fed3', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('d03d792b0f312e7b490afc5cec3dd6c5', 'e51758fa916c881624b046d26bd09230', '8fb8172747a78756c11916216b8b8066', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('d281a95b8f293d0fa2a136f46c4e0b10', 'f6817f48af4fb3af11b9e8bf182f618b', '5c8042bd6c601270b2bbd9b20bccc68b', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('d37ad568e26f46ed0feca227aa9c2ffa', 'f6817f48af4fb3af11b9e8bf182f618b', '9502685863ab87f0ad1134142788a385', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('d3ddcacee1acdfaa0810618b74e38ef2', 'f6817f48af4fb3af11b9e8bf182f618b', 'c6cf95444d80435eb37b2f9db3971ae6', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('d3fe195d59811531c05d31d8436f5c8b', '1750a8fb3e6d90cb7957c02de1dc8e59', 'e8af452d8948ea49d37c934f5100ae6a', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('d5267597a4450f06d49d2fb63859641a', 'e51758fa916c881624b046d26bd09230', '2dbbafa22cda07fa5d169d741b81fe12', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('d83282192a69514cfe6161b3087ff962', 'f6817f48af4fb3af11b9e8bf182f618b', '53a9230444d33de28aa11cc108fb1dba', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('d8a5c9079df12090e108e21be94b4fd7', 'f6817f48af4fb3af11b9e8bf182f618b', '078f9558cdeab239aecb2bda1a8ed0d1', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('dbc5dd836d45c5bc7bc94b22596ab956', 'f6817f48af4fb3af11b9e8bf182f618b', '1939e035e803a99ceecb6f5563570fb2', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('dc83bb13c0e8c930e79d28b2db26f01f', 'f6817f48af4fb3af11b9e8bf182f618b', '63b551e81c5956d5c861593d366d8c57', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('dc8fd3f79bd85bd832608b42167a1c71', 'f6817f48af4fb3af11b9e8bf182f618b', '91c23960fab49335831cf43d820b0a61', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('de82e89b8b60a3ea99be5348f565c240', 'f6817f48af4fb3af11b9e8bf182f618b', '56ca78fe0f22d815fabc793461af67b8', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('de8f43229e351d34af3c95b1b9f0a15d', 'f6817f48af4fb3af11b9e8bf182f618b', 'a400e4f4d54f79bf5ce160ae432231af', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('e258ca8bf7ee168b93bfee739668eb15', 'ee8626f80f7c2619917b6236f3a7f02b', 'fb367426764077dcf94640c843733985', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('e339f7db7418a4fd2bd2c113f1182186', 'ee8626f80f7c2619917b6236f3a7f02b', 'b1cb0a3fedf7ed0e4653cb5a229837ee', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('e3e922673f4289b18366bb51b6200f17', '52b0cf022ac4187b2a70dfa4f8b2d940', '45c966826eeff4c99b8f8ebfe74511fc', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('e7467726ee72235baaeb47df04a35e73', 'f6817f48af4fb3af11b9e8bf182f618b', 'e08cb190ef230d5d4f03824198773950', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('eaef4486f1c9b0408580bbfa2037eb66', 'f6817f48af4fb3af11b9e8bf182f618b', '2a470fc0c3954d9dbb61de6d80846549', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('ec4bc97829ab56afd83f428b6dc37ff6', 'f6817f48af4fb3af11b9e8bf182f618b', '200006f0edf145a2b50eacca07585451', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('ec846a3f85fdb6813e515be71f11b331', 'f6817f48af4fb3af11b9e8bf182f618b', '732d48f8e0abe99fe6a23d18a3171cd1', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('ec93bb06f5be4c1f19522ca78180e2ef', 'f6817f48af4fb3af11b9e8bf182f618b', '265de841c58907954b8877fb85212622', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('ecdd72fe694e6bba9c1d9fc925ee79de', 'f6817f48af4fb3af11b9e8bf182f618b', '45c966826eeff4c99b8f8ebfe74511fc', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('edefd8d468f5727db465cf1b860af474', 'f6817f48af4fb3af11b9e8bf182f618b', '6ad53fd1b220989a8b71ff482d683a5a', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('ef8bdd20d29447681ec91d3603e80c7b', 'f6817f48af4fb3af11b9e8bf182f618b', 'ae4fed059f67086fd52a73d913cf473d', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('f12b6c90e8913183d7ca547c66600891', 'e51758fa916c881624b046d26bd09230', 'aedbf679b5773c1f25e9f7b10111da73', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('f177acac0276329dc66af0c9ad30558a', 'f6817f48af4fb3af11b9e8bf182f618b', 'c2c356bf4ddd29975347a7047a062440', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('f17ab8ad1e71341140857ef4914ef297', '21c5a3187763729408b40afb0d0fdfa8', '732d48f8e0abe99fe6a23d18a3171cd1', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('f99f99cc3bc27220cdd4f5aced33b7d7', 'f6817f48af4fb3af11b9e8bf182f618b', '655563cd64b75dcf52ef7bcdd4836953', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('fafe73c4448b977fe42880a6750c3ee8', 'f6817f48af4fb3af11b9e8bf182f618b', '9cb91b8851db0cf7b19d7ecc2a8193dd', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('fced905c7598973b970d42d833f73474', 'f6817f48af4fb3af11b9e8bf182f618b', '4875ebe289344e14844d8e3ea1edd73f', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('fd86f6b08eb683720ba499f9d9421726', 'ee8626f80f7c2619917b6236f3a7f02b', '693ce69af3432bd00be13c3971a57961', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('fd97963dc5f144d3aecfc7045a883427', 'f6817f48af4fb3af11b9e8bf182f618b', '043780fa095ff1b2bec4dc406d76f023', NULL);
INSERT INTO "base"."sys_role_permission" VALUES ('fed41a4671285efb266cd404f24dd378', '52b0cf022ac4187b2a70dfa4f8b2d940', '00a2a0ae65cdca5e93209cdbde97cbe6', NULL);

-- ----------------------------
-- Table structure for sys_sms
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_sms";
CREATE TABLE "base"."sys_sms" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "es_title" varchar(100) COLLATE "pg_catalog"."default",
  "es_type" varchar(1) COLLATE "pg_catalog"."default",
  "es_receiver" varchar(50) COLLATE "pg_catalog"."default",
  "es_param" varchar(1000) COLLATE "pg_catalog"."default",
  "es_content" text COLLATE "pg_catalog"."default",
  "es_send_time" timestamp(6),
  "es_send_status" varchar(1) COLLATE "pg_catalog"."default",
  "es_send_num" int4,
  "es_result" varchar(255) COLLATE "pg_catalog"."default",
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "base"."sys_sms"."id" IS 'ID';
COMMENT ON COLUMN "base"."sys_sms"."es_title" IS '消息标题';
COMMENT ON COLUMN "base"."sys_sms"."es_type" IS '发送方式：1短信 2邮件 3微信';
COMMENT ON COLUMN "base"."sys_sms"."es_receiver" IS '接收人';
COMMENT ON COLUMN "base"."sys_sms"."es_param" IS '发送所需参数Json格式';
COMMENT ON COLUMN "base"."sys_sms"."es_content" IS '推送内容';
COMMENT ON COLUMN "base"."sys_sms"."es_send_time" IS '推送时间';
COMMENT ON COLUMN "base"."sys_sms"."es_send_status" IS '推送状态 0未推送 1推送成功 2推送失败 -1失败不再发送';
COMMENT ON COLUMN "base"."sys_sms"."es_send_num" IS '发送次数 超过5次不再发送';
COMMENT ON COLUMN "base"."sys_sms"."es_result" IS '推送失败原因';
COMMENT ON COLUMN "base"."sys_sms"."remark" IS '备注';
COMMENT ON COLUMN "base"."sys_sms"."create_by" IS '创建人登录名称';
COMMENT ON COLUMN "base"."sys_sms"."create_time" IS '创建日期';
COMMENT ON COLUMN "base"."sys_sms"."update_by" IS '更新人登录名称';
COMMENT ON COLUMN "base"."sys_sms"."update_time" IS '更新日期';

-- ----------------------------
-- Records of sys_sms
-- ----------------------------
INSERT INTO "base"."sys_sms" VALUES ('402881f3647da06c01647da43a940014', '催办：HR审批', '3', 'admin', NULL, 'admin，您好！
请前待办任务办理事项！HR审批


===========================
此消息由系统发出', '2018-07-09 14:04:32', '2', NULL, NULL, NULL, 'admin', '2018-07-09 14:04:32', 'admin', '2018-07-09 18:51:30');

-- ----------------------------
-- Table structure for sys_sms_template
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_sms_template";
CREATE TABLE "base"."sys_sms_template" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "template_name" varchar(50) COLLATE "pg_catalog"."default",
  "template_code" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "template_type" varchar(1) COLLATE "pg_catalog"."default" NOT NULL,
  "template_content" varchar(1000) COLLATE "pg_catalog"."default" NOT NULL,
  "template_test_json" varchar(1000) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."sys_sms_template"."id" IS '主键';
COMMENT ON COLUMN "base"."sys_sms_template"."template_name" IS '模板标题';
COMMENT ON COLUMN "base"."sys_sms_template"."template_code" IS '模板CODE';
COMMENT ON COLUMN "base"."sys_sms_template"."template_type" IS '模板类型：1短信 2邮件 3微信';
COMMENT ON COLUMN "base"."sys_sms_template"."template_content" IS '模板内容';
COMMENT ON COLUMN "base"."sys_sms_template"."template_test_json" IS '模板测试json';
COMMENT ON COLUMN "base"."sys_sms_template"."create_time" IS '创建日期';
COMMENT ON COLUMN "base"."sys_sms_template"."create_by" IS '创建人登录名称';
COMMENT ON COLUMN "base"."sys_sms_template"."update_time" IS '更新日期';
COMMENT ON COLUMN "base"."sys_sms_template"."update_by" IS '更新人登录名称';

-- ----------------------------
-- Records of sys_sms_template
-- ----------------------------
INSERT INTO "base"."sys_sms_template" VALUES ('1199606397416775681', '系统消息通知', 'sys_ts_note', '4', '<h1>&nbsp; &nbsp; 系统通知</h1>
<ul>
<li>通知时间：&nbsp; ${ts_date}</li>
<li>通知内容：&nbsp; ${ts_content}</li>
</ul>', NULL, '2019-11-27 16:30:27', 'admin', '2019-11-27 19:36:50', 'admin');
INSERT INTO "base"."sys_sms_template" VALUES ('1199615897335095298', '流程催办', 'bpm_cuiban', '4', '<h1>&nbsp; &nbsp;流程催办提醒</h1>
<ul>
<li>流程名称：&nbsp; ${bpm_name}</li>
<li>催办任务：&nbsp; ${bpm_task}</li>
<li>催办时间 :&nbsp; &nbsp; ${datetime}</li>
<li>催办内容 :&nbsp; &nbsp; ${remark}</li>
</ul>', NULL, '2019-11-27 17:08:12', 'admin', '2019-11-27 19:36:45', 'admin');
INSERT INTO "base"."sys_sms_template" VALUES ('1199648914107625473', '流程办理超时提醒', 'bpm_chaoshi_tip', '4', '<h1>&nbsp; &nbsp;流程办理超时提醒</h1>
<ul>
<li>&nbsp; &nbsp;超时提醒信息：&nbsp; &nbsp; 您有待处理的超时任务，请尽快处理！</li>
<li>&nbsp; &nbsp;超时任务标题：&nbsp; &nbsp; ${title}</li>
<li>&nbsp; &nbsp;超时任务节点：&nbsp; &nbsp; ${task}</li>
<li>&nbsp; &nbsp;任务处理人：&nbsp; &nbsp; &nbsp; &nbsp;${user}</li>
<li>&nbsp; &nbsp;任务开始时间：&nbsp; &nbsp; ${time}</li>
</ul>', NULL, '2019-11-27 19:19:24', 'admin', '2019-11-27 19:36:37', 'admin');
INSERT INTO "base"."sys_sms_template" VALUES ('4028608164691b000164693108140003', '催办：${taskName}', 'SYS001', '3', '${userName}，您好！
请前待办任务办理事项！${taskName}


===========================
此消息由系统发出', '{
"taskName":"HR审批",
"userName":"admin"
}', '2018-07-05 14:46:18', 'admin', '2018-07-05 18:31:34', 'admin');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_user";
CREATE TABLE "base"."sys_user" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "username" varchar(100) COLLATE "pg_catalog"."default",
  "realname" varchar(100) COLLATE "pg_catalog"."default",
  "password" varchar(255) COLLATE "pg_catalog"."default",
  "salt" varchar(45) COLLATE "pg_catalog"."default",
  "avatar" varchar(255) COLLATE "pg_catalog"."default",
  "birthday" timestamp(6),
  "sex" int2,
  "email" varchar(45) COLLATE "pg_catalog"."default",
  "phone" varchar(45) COLLATE "pg_catalog"."default",
  "org_code" varchar(64) COLLATE "pg_catalog"."default",
  "status" int2,
  "del_flag" int2,
  "third_id" varchar(100) COLLATE "pg_catalog"."default",
  "third_type" varchar(100) COLLATE "pg_catalog"."default",
  "activiti_sync" int2,
  "work_no" varchar(100) COLLATE "pg_catalog"."default",
  "post" varchar(100) COLLATE "pg_catalog"."default",
  "telephone" varchar(45) COLLATE "pg_catalog"."default",
  "create_by" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(32) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "user_identity" int2,
  "depart_ids" text COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."sys_user"."id" IS '主键id';
COMMENT ON COLUMN "base"."sys_user"."username" IS '登录账号';
COMMENT ON COLUMN "base"."sys_user"."realname" IS '真实姓名';
COMMENT ON COLUMN "base"."sys_user"."password" IS '密码';
COMMENT ON COLUMN "base"."sys_user"."salt" IS 'md5密码盐';
COMMENT ON COLUMN "base"."sys_user"."avatar" IS '头像';
COMMENT ON COLUMN "base"."sys_user"."birthday" IS '生日';
COMMENT ON COLUMN "base"."sys_user"."sex" IS '性别(0-默认未知,1-男,2-女)';
COMMENT ON COLUMN "base"."sys_user"."email" IS '电子邮件';
COMMENT ON COLUMN "base"."sys_user"."phone" IS '电话';
COMMENT ON COLUMN "base"."sys_user"."org_code" IS '机构编码';
COMMENT ON COLUMN "base"."sys_user"."status" IS '性别(1-正常,2-冻结)';
COMMENT ON COLUMN "base"."sys_user"."del_flag" IS '删除状态(0-正常,1-已删除)';
COMMENT ON COLUMN "base"."sys_user"."third_id" IS '第三方登录的唯一标识';
COMMENT ON COLUMN "base"."sys_user"."third_type" IS '第三方类型';
COMMENT ON COLUMN "base"."sys_user"."activiti_sync" IS '同步工作流引擎(1-同步,0-不同步)';
COMMENT ON COLUMN "base"."sys_user"."work_no" IS '工号，唯一键';
COMMENT ON COLUMN "base"."sys_user"."post" IS '职务，关联职务表';
COMMENT ON COLUMN "base"."sys_user"."telephone" IS '座机号';
COMMENT ON COLUMN "base"."sys_user"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."sys_user"."create_time" IS '创建时间';
COMMENT ON COLUMN "base"."sys_user"."update_by" IS '更新人';
COMMENT ON COLUMN "base"."sys_user"."update_time" IS '更新时间';
COMMENT ON COLUMN "base"."sys_user"."user_identity" IS '身份（1普通成员 2上级）';
COMMENT ON COLUMN "base"."sys_user"."depart_ids" IS '负责部门';
COMMENT ON TABLE "base"."sys_user" IS '用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO "base"."sys_user" VALUES ('e9ca23d68d884d4ebb19d07889727dae', 'admin', '管理员', 'cb362cfeefbf3d8d', 'RCGTeGiH', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590147285198&di=818a885c5e18be6ed6c6c10c252c1f7b&imgtype=0&src=http%3A%2F%2Fimg.jk51.com%2Fimg_jk51%2F187167133.jpeg', '2018-12-05 00:00:00', 1, 'L@163.com', '18611111111', 'A01', 1, 0, NULL, NULL, 1, '00001', '总经理', NULL, NULL, '2038-06-21 17:54:10', 'admin', '2020-05-02 18:19:41', 2, 'c6d7cb4deeac411cb3384b1b31278596');
INSERT INTO "base"."sys_user" VALUES ('a75d45a015c44384a04449ee80dc3503', '刘稳', '刘稳', '3dd8371f3cf8240e', 'vDDkDzrK', 'user/20190220/e1fe9925bc315c60addea1b98eb1cb1349547719_1550656892940.jpg', NULL, 1, NULL, NULL, '财务部', 1, 0, NULL, NULL, 1, '00002', 'devleader', NULL, 'admin', '2019-02-13 16:02:36', 'admin', '2020-05-02 15:34:30', 1, '');

-- ----------------------------
-- Table structure for sys_user_agent
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_user_agent";
CREATE TABLE "base"."sys_user_agent" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "user_name" varchar(100) COLLATE "pg_catalog"."default",
  "agent_user_name" varchar(100) COLLATE "pg_catalog"."default",
  "start_time" timestamp(6),
  "end_time" timestamp(6),
  "status" varchar(2) COLLATE "pg_catalog"."default",
  "create_name" varchar(50) COLLATE "pg_catalog"."default",
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_name" varchar(50) COLLATE "pg_catalog"."default",
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "sys_org_code" varchar(50) COLLATE "pg_catalog"."default",
  "sys_company_code" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."sys_user_agent"."id" IS '序号';
COMMENT ON COLUMN "base"."sys_user_agent"."user_name" IS '用户名';
COMMENT ON COLUMN "base"."sys_user_agent"."agent_user_name" IS '代理人用户名';
COMMENT ON COLUMN "base"."sys_user_agent"."start_time" IS '代理开始时间';
COMMENT ON COLUMN "base"."sys_user_agent"."end_time" IS '代理结束时间';
COMMENT ON COLUMN "base"."sys_user_agent"."status" IS '状态0无效1有效';
COMMENT ON COLUMN "base"."sys_user_agent"."create_name" IS '创建人名称';
COMMENT ON COLUMN "base"."sys_user_agent"."create_by" IS '创建人登录名称';
COMMENT ON COLUMN "base"."sys_user_agent"."create_time" IS '创建日期';
COMMENT ON COLUMN "base"."sys_user_agent"."update_name" IS '更新人名称';
COMMENT ON COLUMN "base"."sys_user_agent"."update_by" IS '更新人登录名称';
COMMENT ON COLUMN "base"."sys_user_agent"."update_time" IS '更新日期';
COMMENT ON COLUMN "base"."sys_user_agent"."sys_org_code" IS '所属部门';
COMMENT ON COLUMN "base"."sys_user_agent"."sys_company_code" IS '所属公司';
COMMENT ON TABLE "base"."sys_user_agent" IS '用户代理人设置';

-- ----------------------------
-- Records of sys_user_agent
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_depart
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_user_depart";
CREATE TABLE "base"."sys_user_depart" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" varchar(32) COLLATE "pg_catalog"."default",
  "dep_id" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."sys_user_depart"."id" IS 'id';
COMMENT ON COLUMN "base"."sys_user_depart"."user_id" IS '用户id';
COMMENT ON COLUMN "base"."sys_user_depart"."dep_id" IS '部门id';

-- ----------------------------
-- Records of sys_user_depart
-- ----------------------------
INSERT INTO "base"."sys_user_depart" VALUES ('0c42ba309c2c4cad35836ec2336676fa', '42d153bffeea74f72a9c1697874fa4a7', '6d35e179cd814e3299bd588ea7daed3f');
INSERT INTO "base"."sys_user_depart" VALUES ('1256487210695356418', 'a75d45a015c44384a04449ee80dc3503', 'a7d7e77e06c84325a40932163adcdaa6');
INSERT INTO "base"."sys_user_depart" VALUES ('1f3a0267811327b9eca86b0cc2b956f3', 'bcbe1290783a469a83ae3bd8effe15d4', '5159cde220114246b045e574adceafe9');
INSERT INTO "base"."sys_user_depart" VALUES ('1256528778500354050', 'e9ca23d68d884d4ebb19d07889727dae', 'c6d7cb4deeac411cb3384b1b31278596');
INSERT INTO "base"."sys_user_depart" VALUES ('1256487300096946177', 'f0019fdebedb443c98dcb17d88222c38', '57197590443c44f083d42ae24ef26a2c');
INSERT INTO "base"."sys_user_depart" VALUES ('1256487300122112001', 'f0019fdebedb443c98dcb17d88222c38', '67fc001af12a4f9b8458005d3f19934a');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS "base"."sys_user_role";
CREATE TABLE "base"."sys_user_role" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" varchar(32) COLLATE "pg_catalog"."default",
  "role_id" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."sys_user_role"."id" IS '主键id';
COMMENT ON COLUMN "base"."sys_user_role"."user_id" IS '用户id';
COMMENT ON COLUMN "base"."sys_user_role"."role_id" IS '角色id';
COMMENT ON TABLE "base"."sys_user_role" IS '用户角色表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO "base"."sys_user_role" VALUES ('b3ffd9311a1ca296c44e2409b547384f', '01b802058ea94b978a2c96f4807f6b48', '1');
INSERT INTO "base"."sys_user_role" VALUES ('0ede6d23d53bc7dc990346ff14faabee', '3db4cf42353f4e868b7ccfeef90505d2', 'ee8626f80f7c2619917b6236f3a7f02b');
INSERT INTO "base"."sys_user_role" VALUES ('e78d210d24aaff48e0a736e2ddff4cdc', '3e177fede453430387a8279ced685679', 'ee8626f80f7c2619917b6236f3a7f02b');
INSERT INTO "base"."sys_user_role" VALUES ('f2de3ae7b5efd8345581aa802a6675d6', '41b1be8d4c52023b0798f51164ca682d', 'e51758fa916c881624b046d26bd09230');
INSERT INTO "base"."sys_user_role" VALUES ('6f9da7310489bac1e5f95e0efe92b4ce', '42d153bffeea74f72a9c1697874fa4a7', 'e51758fa916c881624b046d26bd09230');
INSERT INTO "base"."sys_user_role" VALUES ('f2922a38ba24fb53749e45a0c459adb3', '439ae3e9bcf7418583fcd429cadb1d72', '1');
INSERT INTO "base"."sys_user_role" VALUES ('f72c6190b0722e798147e73c776c6ac9', '439ae3e9bcf7418583fcd429cadb1d72', 'ee8626f80f7c2619917b6236f3a7f02b');
INSERT INTO "base"."sys_user_role" VALUES ('ee45d0343ecec894b6886effc92cb0b7', '4d8fef4667574b24a9ccfedaf257810c', 'f6817f48af4fb3af11b9e8bf182f618b');
INSERT INTO "base"."sys_user_role" VALUES ('be2639167ede09379937daca7fc3bb73', '526f300ab35e44faaed54a9fb0742845', 'ee8626f80f7c2619917b6236f3a7f02b');
INSERT INTO "base"."sys_user_role" VALUES ('31af310584bd5795f76b1fe8c38294a0', '70f5dcf03f36471dabba81381919291f', 'e51758fa916c881624b046d26bd09230');
INSERT INTO "base"."sys_user_role" VALUES ('8d7846ec783e157174e4ce2949231a65', '7ee6630e89d17afbf6d12150197b578d', 'e51758fa916c881624b046d26bd09230');
INSERT INTO "base"."sys_user_role" VALUES ('79d66ef7aa137cfa9957081a1483009d', '9a668858c4c74cf5a2b25ad9608ba095', 'ee8626f80f7c2619917b6236f3a7f02b');
INSERT INTO "base"."sys_user_role" VALUES ('1256487210544361473', 'a75d45a015c44384a04449ee80dc3503', 'ee8626f80f7c2619917b6236f3a7f02b');
INSERT INTO "base"."sys_user_role" VALUES ('1256528778294833153', 'e9ca23d68d884d4ebb19d07889727dae', 'f6817f48af4fb3af11b9e8bf182f618b');
INSERT INTO "base"."sys_user_role" VALUES ('1256487299962728449', 'f0019fdebedb443c98dcb17d88222c38', 'ee8626f80f7c2619917b6236f3a7f02b');

-- ----------------------------
-- Table structure for test_demo
-- ----------------------------
DROP TABLE IF EXISTS "base"."test_demo";
CREATE TABLE "base"."test_demo" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "name" varchar(200) COLLATE "pg_catalog"."default",
  "sex" varchar(32) COLLATE "pg_catalog"."default",
  "age" int4,
  "descc" varchar(500) COLLATE "pg_catalog"."default",
  "birthday" timestamp(6),
  "user_code" varchar(32) COLLATE "pg_catalog"."default",
  "file_kk" varchar(500) COLLATE "pg_catalog"."default",
  "top_pic" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."test_demo"."id" IS '主键';
COMMENT ON COLUMN "base"."test_demo"."create_by" IS '创建人登录名称';
COMMENT ON COLUMN "base"."test_demo"."create_time" IS '创建日期';
COMMENT ON COLUMN "base"."test_demo"."update_by" IS '更新人登录名称';
COMMENT ON COLUMN "base"."test_demo"."update_time" IS '更新日期';
COMMENT ON COLUMN "base"."test_demo"."name" IS '用户名';
COMMENT ON COLUMN "base"."test_demo"."sex" IS '性别';
COMMENT ON COLUMN "base"."test_demo"."age" IS '年龄';
COMMENT ON COLUMN "base"."test_demo"."descc" IS '描述';
COMMENT ON COLUMN "base"."test_demo"."birthday" IS '生日';
COMMENT ON COLUMN "base"."test_demo"."user_code" IS '用户编码';
COMMENT ON COLUMN "base"."test_demo"."file_kk" IS '附件';
COMMENT ON COLUMN "base"."test_demo"."top_pic" IS '头像';

-- ----------------------------
-- Records of test_demo
-- ----------------------------
INSERT INTO "base"."test_demo" VALUES ('4028810c6b02cba2016b02cba21f0000', 'admin', '2019-05-29 16:53:48', 'admin', '2019-08-23 23:45:21', '玉玑子', '1', 8222, '8', '2019-04-01 00:00:00', NULL, '', '');

-- ----------------------------
-- Table structure for test_enhance_select
-- ----------------------------
DROP TABLE IF EXISTS "base"."test_enhance_select";
CREATE TABLE "base"."test_enhance_select" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "province" varchar(100) COLLATE "pg_catalog"."default",
  "city" varchar(100) COLLATE "pg_catalog"."default",
  "area" varchar(100) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "create_by" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."test_enhance_select"."province" IS '省份';
COMMENT ON COLUMN "base"."test_enhance_select"."city" IS '市';
COMMENT ON COLUMN "base"."test_enhance_select"."area" IS '区';
COMMENT ON COLUMN "base"."test_enhance_select"."create_time" IS '创建日期';
COMMENT ON COLUMN "base"."test_enhance_select"."create_by" IS '创建人';

-- ----------------------------
-- Records of test_enhance_select
-- ----------------------------
INSERT INTO "base"."test_enhance_select" VALUES ('1256614575282958338', '1230769290609725441', '1230769470889299970', '1230769620021972993', '2020-05-03 00:00:36', 'admin');
INSERT INTO "base"."test_enhance_select" VALUES ('402880e570801ffe01708053743c002e', '1230769253267836929', '1230769769930592257', '1230769855347593217', '2020-02-26 15:08:37', 'admin');
INSERT INTO "base"."test_enhance_select" VALUES ('402880e570801ffe017080538b24002f', '1230769290609725441', '1230769470889299970', '1230769620021972993', '2020-02-26 15:08:43', 'admin');
INSERT INTO "base"."test_enhance_select" VALUES ('402880e570801ffe01708053b2b10030', '1230769253267836929', '1230769347157331969', '1230769407907631106', '2020-02-26 15:08:53', 'admin');

-- ----------------------------
-- Table structure for test_order_main
-- ----------------------------
DROP TABLE IF EXISTS "base"."test_order_main";
CREATE TABLE "base"."test_order_main" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "order_code" varchar(32) COLLATE "pg_catalog"."default",
  "order_date" timestamp(6),
  "descc" varchar(100) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."test_order_main"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."test_order_main"."create_time" IS '创建日期';
COMMENT ON COLUMN "base"."test_order_main"."update_by" IS '更新人';
COMMENT ON COLUMN "base"."test_order_main"."update_time" IS '更新日期';
COMMENT ON COLUMN "base"."test_order_main"."order_code" IS '订单编码';
COMMENT ON COLUMN "base"."test_order_main"."order_date" IS '下单时间';
COMMENT ON COLUMN "base"."test_order_main"."descc" IS '描述';

-- ----------------------------
-- Records of test_order_main
-- ----------------------------
INSERT INTO "base"."test_order_main" VALUES ('1256629667445714946', 'admin', '2020-05-03 01:00:34', 'admin', '2020-05-03 01:28:27', '鼠标', '2020-05-03 00:00:00', '15');
INSERT INTO "base"."test_order_main" VALUES ('4028810c6b40244b016b40686dfb0003', 'admin', '2019-06-10 16:01:54', 'admin', '2020-02-24 02:31:59', 'B002', '2019-06-10 00:00:00', '123');
INSERT INTO "base"."test_order_main" VALUES ('4028810c6b40244b016b4068ef890006', 'admin', '2019-06-10 16:02:27', 'admin', '2020-05-03 01:00:17', '00001', '2019-06-10 00:00:00', '购买产品BOOT');

-- ----------------------------
-- Table structure for test_order_product
-- ----------------------------
DROP TABLE IF EXISTS "base"."test_order_product";
CREATE TABLE "base"."test_order_product" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "product_name" varchar(32) COLLATE "pg_catalog"."default",
  "price" float8,
  "num" int4,
  "descc" varchar(32) COLLATE "pg_catalog"."default",
  "order_fk_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "pro_type" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."test_order_product"."id" IS '主键';
COMMENT ON COLUMN "base"."test_order_product"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."test_order_product"."create_time" IS '创建日期';
COMMENT ON COLUMN "base"."test_order_product"."update_by" IS '更新人';
COMMENT ON COLUMN "base"."test_order_product"."update_time" IS '更新日期';
COMMENT ON COLUMN "base"."test_order_product"."product_name" IS '产品名字';
COMMENT ON COLUMN "base"."test_order_product"."price" IS '价格';
COMMENT ON COLUMN "base"."test_order_product"."num" IS '数量';
COMMENT ON COLUMN "base"."test_order_product"."descc" IS '描述';
COMMENT ON COLUMN "base"."test_order_product"."order_fk_id" IS '订单外键ID';
COMMENT ON COLUMN "base"."test_order_product"."pro_type" IS '产品类型';

-- ----------------------------
-- Records of test_order_product
-- ----------------------------
INSERT INTO "base"."test_order_product" VALUES ('15665749852471', 'admin', '2020-05-03 01:00:17', NULL, NULL, '樱桃键盘', 200, 22, '', '4028810c6b40244b016b4068ef890006', '2');
INSERT INTO "base"."test_order_product" VALUES ('15884355700882143174', 'admin', '2020-05-03 01:00:17', NULL, NULL, '雷蛇鼠标', 100, NULL, '', '4028810c6b40244b016b4068ef890006', '1');
INSERT INTO "base"."test_order_product" VALUES ('15884355711373624689', 'admin', '2020-05-03 01:00:17', NULL, NULL, 'AOC显示器', 900, NULL, '', '4028810c6b40244b016b4068ef890006', '1');
INSERT INTO "base"."test_order_product" VALUES ('15884388229280883233', 'admin', '2020-05-03 01:28:27', NULL, NULL, '华为手机', 25, 35, '345', '1256629667445714946', '1');
INSERT INTO "base"."test_order_product" VALUES ('15884388231401967996', 'admin', '2020-05-03 01:00:49', NULL, NULL, '低代码平台', 25, 35, '445', '1256629667445714946', '2');
INSERT INTO "base"."test_order_product" VALUES ('15884388463052345317', 'admin', '2020-05-03 01:00:49', NULL, NULL, '表单设计器', 55, 55, '55', '1256629667445714946', '1');
INSERT INTO "base"."test_order_product" VALUES ('402831816a38e7fd016a38e7fdeb0001', 'admin', '2019-04-20 12:01:29', NULL, NULL, '笔记本', 100, 10, NULL, '402831816a38e7fd016a38e7fddf0000', NULL);
INSERT INTO "base"."test_order_product" VALUES ('402831816a38e7fd016a38e7fdf10002', 'admin', '2019-04-20 12:01:29', NULL, NULL, '显示器', 300, 1, NULL, '402831816a38e7fd016a38e7fddf0000', NULL);
INSERT INTO "base"."test_order_product" VALUES ('4028810c6b40244b016b40686e050004', 'admin', '2020-02-24 02:31:59', NULL, NULL, '笔记本', 2000, 2, '123', '4028810c6b40244b016b40686dfb0003', '2');

-- ----------------------------
-- Table structure for test_person
-- ----------------------------
DROP TABLE IF EXISTS "base"."test_person";
CREATE TABLE "base"."test_person" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "sex" varchar(32) COLLATE "pg_catalog"."default",
  "name" varchar(200) COLLATE "pg_catalog"."default",
  "content" text COLLATE "pg_catalog"."default",
  "be_date" timestamp(6),
  "qj_days" int4
)
;
COMMENT ON COLUMN "base"."test_person"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."test_person"."create_time" IS '创建日期';
COMMENT ON COLUMN "base"."test_person"."update_by" IS '更新人';
COMMENT ON COLUMN "base"."test_person"."update_time" IS '更新日期';
COMMENT ON COLUMN "base"."test_person"."sex" IS '性别';
COMMENT ON COLUMN "base"."test_person"."name" IS '用户名';
COMMENT ON COLUMN "base"."test_person"."content" IS '请假原因';
COMMENT ON COLUMN "base"."test_person"."be_date" IS '请假时间';
COMMENT ON COLUMN "base"."test_person"."qj_days" IS '请假天数';

-- ----------------------------
-- Records of test_person
-- ----------------------------
INSERT INTO "base"."test_person" VALUES ('8ca668defdae47df8649a5477ae08b05', 'admin', '2019-04-12 09:51:37', NULL, NULL, '1', 'zhangdaiscott', 'dsdsd', '2019-04-12 00:00:00', 2);

-- ----------------------------
-- Table structure for test_shoptype_tree
-- ----------------------------
DROP TABLE IF EXISTS "base"."test_shoptype_tree";
CREATE TABLE "base"."test_shoptype_tree" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "sys_org_code" varchar(64) COLLATE "pg_catalog"."default",
  "type_name" varchar(32) COLLATE "pg_catalog"."default",
  "pic" varchar(500) COLLATE "pg_catalog"."default",
  "pid" varchar(32) COLLATE "pg_catalog"."default",
  "has_child" varchar(3) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "base"."test_shoptype_tree"."id" IS '主键';
COMMENT ON COLUMN "base"."test_shoptype_tree"."create_by" IS '创建人';
COMMENT ON COLUMN "base"."test_shoptype_tree"."create_time" IS '创建日期';
COMMENT ON COLUMN "base"."test_shoptype_tree"."update_by" IS '更新人';
COMMENT ON COLUMN "base"."test_shoptype_tree"."update_time" IS '更新日期';
COMMENT ON COLUMN "base"."test_shoptype_tree"."sys_org_code" IS '所属部门';
COMMENT ON COLUMN "base"."test_shoptype_tree"."type_name" IS '商品分类';
COMMENT ON COLUMN "base"."test_shoptype_tree"."pic" IS '分类图片';
COMMENT ON COLUMN "base"."test_shoptype_tree"."pid" IS '父级节点';
COMMENT ON COLUMN "base"."test_shoptype_tree"."has_child" IS '是否有子节点';

-- ----------------------------
-- Records of test_shoptype_tree
-- ----------------------------
INSERT INTO "base"."test_shoptype_tree" VALUES ('1256628820489908225', 'admin', '2020-05-03 00:57:12', NULL, NULL, 'A01', '衣服', NULL, '0', '0');
INSERT INTO "base"."test_shoptype_tree" VALUES ('1256628843097206786', 'admin', '2020-05-03 00:57:17', NULL, NULL, 'A01', '电子产品', NULL, '0', '0');

-- ----------------------------
-- Primary Key structure for table demo
-- ----------------------------
ALTER TABLE "base"."demo" ADD CONSTRAINT "demo_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table demo_field_def_val_main
-- ----------------------------
ALTER TABLE "base"."demo_field_def_val_main" ADD CONSTRAINT "demo_field_def_val_main_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table demo_field_def_val_sub
-- ----------------------------
ALTER TABLE "base"."demo_field_def_val_sub" ADD CONSTRAINT "demo_field_def_val_sub_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table jeecg_monthly_growth_analysis
-- ----------------------------
ALTER TABLE "base"."jeecg_monthly_growth_analysis" ADD CONSTRAINT "jeecg_monthly_growth_analysis_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table jeecg_order_customer
-- ----------------------------
ALTER TABLE "base"."jeecg_order_customer" ADD CONSTRAINT "jeecg_order_customer_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table jeecg_order_main
-- ----------------------------
ALTER TABLE "base"."jeecg_order_main" ADD CONSTRAINT "jeecg_order_main_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table jeecg_order_ticket
-- ----------------------------
ALTER TABLE "base"."jeecg_order_ticket" ADD CONSTRAINT "jeecg_order_ticket_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table jeecg_project_nature_income
-- ----------------------------
ALTER TABLE "base"."jeecg_project_nature_income" ADD CONSTRAINT "jeecg_project_nature_income_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table joa_demo
-- ----------------------------
ALTER TABLE "base"."joa_demo" ADD CONSTRAINT "joa_demo_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table onl_cgform_button
-- ----------------------------
CREATE INDEX "index_button_code" ON "base"."onl_cgform_button" USING btree (
  "button_code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "index_button_order" ON "base"."onl_cgform_button" USING btree (
  "order_num" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "index_button_status" ON "base"."onl_cgform_button" USING btree (
  "button_status" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "index_formid" ON "base"."onl_cgform_button" USING btree (
  "cgform_head_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table onl_cgform_button
-- ----------------------------
ALTER TABLE "base"."onl_cgform_button" ADD CONSTRAINT "onl_cgform_button_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table onl_cgform_enhance_java
-- ----------------------------
CREATE INDEX "index_buttoncode" ON "base"."onl_cgform_enhance_java" USING btree (
  "button_code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "index_fmid" ON "base"."onl_cgform_enhance_java" USING btree (
  "cgform_head_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "index_status" ON "base"."onl_cgform_enhance_java" USING btree (
  "active_status" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table onl_cgform_enhance_java
-- ----------------------------
ALTER TABLE "base"."onl_cgform_enhance_java" ADD CONSTRAINT "onl_cgform_enhance_java_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table onl_cgform_enhance_js
-- ----------------------------
ALTER TABLE "base"."onl_cgform_enhance_js" ADD CONSTRAINT "onl_cgform_enhance_js_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table onl_cgform_enhance_sql
-- ----------------------------
ALTER TABLE "base"."onl_cgform_enhance_sql" ADD CONSTRAINT "onl_cgform_enhance_sql_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table onl_cgform_field
-- ----------------------------
ALTER TABLE "base"."onl_cgform_field" ADD CONSTRAINT "onl_cgform_field_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table onl_cgform_head
-- ----------------------------
ALTER TABLE "base"."onl_cgform_head" ADD CONSTRAINT "onl_cgform_head_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table onl_cgform_index
-- ----------------------------
ALTER TABLE "base"."onl_cgform_index" ADD CONSTRAINT "onl_cgform_index_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table onl_cgreport_head
-- ----------------------------
ALTER TABLE "base"."onl_cgreport_head" ADD CONSTRAINT "onl_cgreport_head_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table onl_cgreport_item
-- ----------------------------
ALTER TABLE "base"."onl_cgreport_item" ADD CONSTRAINT "onl_cgreport_item_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table onl_cgreport_param
-- ----------------------------
ALTER TABLE "base"."onl_cgreport_param" ADD CONSTRAINT "onl_cgreport_param_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table oss_file
-- ----------------------------
ALTER TABLE "base"."oss_file" ADD CONSTRAINT "oss_file_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table qrtz_blob_triggers
-- ----------------------------
ALTER TABLE "base"."qrtz_blob_triggers" ADD CONSTRAINT "qrtz_blob_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_calendars
-- ----------------------------
ALTER TABLE "base"."qrtz_calendars" ADD CONSTRAINT "qrtz_calendars_pkey" PRIMARY KEY ("sched_name", "calendar_name");

-- ----------------------------
-- Primary Key structure for table qrtz_cron_triggers
-- ----------------------------
ALTER TABLE "base"."qrtz_cron_triggers" ADD CONSTRAINT "qrtz_cron_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_fired_triggers
-- ----------------------------
ALTER TABLE "base"."qrtz_fired_triggers" ADD CONSTRAINT "qrtz_fired_triggers_pkey" PRIMARY KEY ("sched_name", "entry_id");

-- ----------------------------
-- Primary Key structure for table qrtz_job_details
-- ----------------------------
ALTER TABLE "base"."qrtz_job_details" ADD CONSTRAINT "qrtz_job_details_pkey" PRIMARY KEY ("sched_name", "job_name", "job_group");

-- ----------------------------
-- Primary Key structure for table qrtz_locks
-- ----------------------------
ALTER TABLE "base"."qrtz_locks" ADD CONSTRAINT "qrtz_locks_pkey" PRIMARY KEY ("sched_name", "lock_name");

-- ----------------------------
-- Primary Key structure for table qrtz_paused_trigger_grps
-- ----------------------------
ALTER TABLE "base"."qrtz_paused_trigger_grps" ADD CONSTRAINT "qrtz_paused_trigger_grps_pkey" PRIMARY KEY ("sched_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_scheduler_state
-- ----------------------------
ALTER TABLE "base"."qrtz_scheduler_state" ADD CONSTRAINT "qrtz_scheduler_state_pkey" PRIMARY KEY ("sched_name", "instance_name");

-- ----------------------------
-- Primary Key structure for table qrtz_simple_triggers
-- ----------------------------
ALTER TABLE "base"."qrtz_simple_triggers" ADD CONSTRAINT "qrtz_simple_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_simprop_triggers
-- ----------------------------
ALTER TABLE "base"."qrtz_simprop_triggers" ADD CONSTRAINT "qrtz_simprop_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_triggers
-- ----------------------------
ALTER TABLE "base"."qrtz_triggers" ADD CONSTRAINT "qrtz_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table sys_announcement
-- ----------------------------
ALTER TABLE "base"."sys_announcement" ADD CONSTRAINT "sys_announcement_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_announcement_send
-- ----------------------------
ALTER TABLE "base"."sys_announcement_send" ADD CONSTRAINT "sys_announcement_send_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_category
-- ----------------------------
ALTER TABLE "base"."sys_category" ADD CONSTRAINT "sys_category_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_check_rule
-- ----------------------------
ALTER TABLE "base"."sys_check_rule" ADD CONSTRAINT "sys_check_rule_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_data_log
-- ----------------------------
ALTER TABLE "base"."sys_data_log" ADD CONSTRAINT "sys_data_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_data_source
-- ----------------------------
ALTER TABLE "base"."sys_data_source" ADD CONSTRAINT "sys_data_source_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_depart
-- ----------------------------
ALTER TABLE "base"."sys_depart" ADD CONSTRAINT "sys_depart_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_depart_permission
-- ----------------------------
ALTER TABLE "base"."sys_depart_permission" ADD CONSTRAINT "sys_depart_permission_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_depart_role
-- ----------------------------
ALTER TABLE "base"."sys_depart_role" ADD CONSTRAINT "sys_depart_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_depart_role_permission
-- ----------------------------
ALTER TABLE "base"."sys_depart_role_permission" ADD CONSTRAINT "sys_depart_role_permission_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_depart_role_user
-- ----------------------------
ALTER TABLE "base"."sys_depart_role_user" ADD CONSTRAINT "sys_depart_role_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_dict
-- ----------------------------
ALTER TABLE "base"."sys_dict" ADD CONSTRAINT "sys_dict_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_dict_item
-- ----------------------------
ALTER TABLE "base"."sys_dict_item" ADD CONSTRAINT "sys_dict_item_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_fill_rule
-- ----------------------------
ALTER TABLE "base"."sys_fill_rule" ADD CONSTRAINT "sys_fill_rule_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_log
-- ----------------------------
ALTER TABLE "base"."sys_log" ADD CONSTRAINT "sys_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_permission
-- ----------------------------
ALTER TABLE "base"."sys_permission" ADD CONSTRAINT "sys_permission_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_permission_data_rule
-- ----------------------------
ALTER TABLE "base"."sys_permission_data_rule" ADD CONSTRAINT "sys_permission_data_rule_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_position
-- ----------------------------
ALTER TABLE "base"."sys_position" ADD CONSTRAINT "sys_position_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_quartz_job
-- ----------------------------
ALTER TABLE "base"."sys_quartz_job" ADD CONSTRAINT "sys_quartz_job_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE "base"."sys_role" ADD CONSTRAINT "sys_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_role_permission
-- ----------------------------
ALTER TABLE "base"."sys_role_permission" ADD CONSTRAINT "sys_role_permission_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_sms
-- ----------------------------
ALTER TABLE "base"."sys_sms" ADD CONSTRAINT "sys_sms_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_sms_template
-- ----------------------------
ALTER TABLE "base"."sys_sms_template" ADD CONSTRAINT "sys_sms_template_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "base"."sys_user" ADD CONSTRAINT "sys_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_user_agent
-- ----------------------------
ALTER TABLE "base"."sys_user_agent" ADD CONSTRAINT "sys_user_agent_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_user_depart
-- ----------------------------
ALTER TABLE "base"."sys_user_depart" ADD CONSTRAINT "sys_user_depart_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE "base"."sys_user_role" ADD CONSTRAINT "sys_user_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table test_demo
-- ----------------------------
ALTER TABLE "base"."test_demo" ADD CONSTRAINT "test_demo_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table test_enhance_select
-- ----------------------------
ALTER TABLE "base"."test_enhance_select" ADD CONSTRAINT "test_enhance_select_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table test_order_main
-- ----------------------------
ALTER TABLE "base"."test_order_main" ADD CONSTRAINT "test_order_main_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table test_order_product
-- ----------------------------
ALTER TABLE "base"."test_order_product" ADD CONSTRAINT "test_order_product_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table test_person
-- ----------------------------
ALTER TABLE "base"."test_person" ADD CONSTRAINT "test_person_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table test_shoptype_tree
-- ----------------------------
ALTER TABLE "base"."test_shoptype_tree" ADD CONSTRAINT "test_shoptype_tree_pkey" PRIMARY KEY ("id");
