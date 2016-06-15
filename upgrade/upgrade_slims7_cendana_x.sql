ALTER TABLE  `biblio` ADD  `uid` INT( 11 ) NULL DEFAULT NULL ,
ADD INDEX (  `uid` ) ;
ALTER TABLE  `item` ADD  `uid` INT( 11 ) NULL DEFAULT NULL ,
ADD INDEX (  `uid` ) ;