CREATE TABLE `postoffice_question` (`id` bigint AUTO_INCREMENT NOT NULL PRIMARY KEY, `question_text` varchar(200) NOT NULL, `pub_date` datetime(6) NOT NULL);
CREATE TABLE `postoffice_choice` (`id` bigint AUTO_INCREMENT NOT NULL PRIMARY KEY, `question_id` bigint NOT NULL, `choice_text` varchar(200) NOT NULL, `votes` integer NOT NULL);
ALTER TABLE `postoffice_choice` ADD CONSTRAINT `postoffice_choice_question_id_50d0bcf7_fk_postoffice_question_id` FOREIGN KEY (`question_id`) REFERENCES `postoffice_question` (`id`);
