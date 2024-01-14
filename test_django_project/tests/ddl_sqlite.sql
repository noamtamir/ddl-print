CREATE TABLE "postoffice_question" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "question_text" varchar(200) NOT NULL, "pub_date" datetime NOT NULL);
CREATE TABLE "postoffice_choice" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "question_id" bigint NOT NULL REFERENCES "postoffice_question" ("id") DEFERRABLE INITIALLY DEFERRED, "choice_text" varchar(200) NOT NULL, "votes" integer NOT NULL);
CREATE INDEX "postoffice_choice_question_id_50d0bcf7" ON "postoffice_choice" ("question_id");
