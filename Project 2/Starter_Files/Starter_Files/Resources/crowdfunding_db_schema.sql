-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/22EG8Y
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "CAMPAIGN" (
    "cf_ID" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(100)   NOT NULL,
    "description" text   NOT NULL,
    "goal" int   NOT NULL,
    "pledged" int   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar   NOT NULL,
    "subcategory_id" varchar   NOT NULL
);

CREATE TABLE "CATEGORY" (
    "category_id" varchar   NOT NULL,
    "category" varchar   NOT NULL
);

CREATE TABLE "CONTACTS" (
    "contact_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL
);

CREATE TABLE "SUBCATEGORY" (
    "subcategory_id" varchar   NOT NULL,
    "subcategory" varchar   NOT NULL
);

ALTER TABLE "CATEGORY" ADD CONSTRAINT "fk_CATEGORY_category_id" FOREIGN KEY("category_id")
REFERENCES "CAMPAIGN" ("category_id");

ALTER TABLE "CONTACTS" ADD CONSTRAINT "fk_CONTACTS_contact_id" FOREIGN KEY("contact_id")
REFERENCES "CAMPAIGN" ("cf_ID");

ALTER TABLE "SUBCATEGORY" ADD CONSTRAINT "fk_SUBCATEGORY_subcategory" FOREIGN KEY("subcategory")
REFERENCES "CAMPAIGN" ("subcategory_id");

