BEGIN TRANSACTION;
CREATE TABLE "users_pending"
(
    rowid INTEGER PRIMARY KEY SERIAL NOT NULL,
    name TEXT NOT NULL,
    phone TEXT NOT NULL,
    time_from INTEGER NOT NULL,
    time_to INTEGER NOT NULL
);
INSERT INTO "users_pending" (rowid,name,phone,time_from,time_to) VALUES (39,'Жека','+380 99 438 6000',8,19),
 (40,'Василий','343 2111555',8,21),
 (41,'Василий','+380 99 438 6000',8,21),
 (42,'Василий','+380 99 438 6000',8,21),
 (43,'жизнь','+380 99 438 6012',8,21),
 (44,'Жека','095853069',8,21),
 (45,'Василий','+380 99 438 6000',8,21),
 (46,'321','1 555-521-5554',8,21),
 (47,'Василий','+380 99 438 6000',8,21),
 (48,'Василий','+380 99 438 6000',8,14),
 (49,'Василий Петрович','+380 99 4386000',8,21),
 (50,'Василий Васильевич','0666119536',8,21),
 (51,'э—','+380 99 438 6000',8,21),
 (52,'Василий Васильевич Леонтьев','+380 99 438 6000',3,23),
 (53,'Василий Васильевич','0958530690',8,21),
 (54,'щ','+380 99 438 6000',8,21),
 (55,'Василий','+380 99 438 6000',8,21),
 (56,'Евдокия','+380 99 438 6000',17,22),
 (57,'Горский','+380 99 438 2726',22,23),
 (58,'Григорий','+380 99 438 7400',16,19);
CREATE TABLE "rooms_pending" (
	"rowid"	INTEGER NOT NULL,
	"user_id"	INTEGER NOT NULL,
	"room_type"	TEXT NOT NULL,
	"rooms_count"	INTEGER NOT NULL DEFAULT 1,
	"adult_count"	INTEGER NOT NULL DEFAULT 0,
	"child_3_10_count"	INTEGER NOT NULL DEFAULT 0,
	"child_3_count"	INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY("rowid")
);
INSERT INTO "rooms_pending" (rowid,user_id,room_type,rooms_count,adult_count,child_3_10_count,child_3_count) VALUES (2,39,'Улучшенный 1',2,10,0,0),
 (3,40,'Улучшенный 2',1,5,0,5),
 (4,40,'Улучшенный 1',1,2,0,0),
 (5,41,'Улучшенный 2',1,5,0,5),
 (6,42,'Улучшенный 2',1,5,0,5),
 (7,43,'Двухкомнатный',1,4,0,0),
 (8,44,'Улучшенный 2',1,0,1,0),
 (9,45,'Двухкомнатный',1,2,0,6),
 (10,46,'Стандарт',1,1,0,0),
 (11,47,'Двухкомнатный',1,3,1,0),
 (12,48,'Улучшенный 2',1,3,0,0),
 (13,49,'Стандарт',1,3,0,1),
 (14,50,'Стандарт',1,1,2,0),
 (15,51,'Стандарт',1,1,0,0),
 (16,52,'Двухкомнатный',2,12,0,12),
 (18,52,'Стандарт',2,6,0,6),
 (19,52,'Улучшенный 1',2,10,0,10),
 (20,53,'Улучшенный 2',2,3,0,0),
 (21,53,'Улучшенный 1',2,4,2,0),
 (22,54,'Улучшенный 2',1,3,0,0),
 (23,55,'Двухкомнатный',1,3,1,0),
 (24,56,'Стандарт',1,2,1,4),
 (25,57,'Двухкомнатный',1,3,0,0),
 (26,57,'Улучшенный 2',2,2,1,0),
 (27,58,'Двухкомнатный',1,5,1,6),
 (28,58,'Стандарт',1,3,0,3),
 (29,58,'Улучшенный 1',1,5,0,5);
CREATE TABLE "rooms_ordered" (
	"id"	INT NOT NULL,
	"user_id"	INT NOT NULL,
	"room_id"	INT NOT NULL,
	"date_begin"	DATE NOT NULL,
	"date_end"	DATE NOT NULL,
	"status"	INT NOT NULL,
	PRIMARY KEY("id")
);
INSERT INTO "rooms_ordered" (id,user_id,room_id,date_begin,date_end,status) VALUES (4,4,2,'2017-08-16','2017-08-18',1),
 (3,3,1,'2017-08-28','2017-08-29',2),
 (2,2,1,'2017-08-23','2017-08-26',1),
 (1,1,1,'2017-08-15','2017-08-19',2),
 (5,5,2,'2017-08-21','2017-08-24',2),
 (6,6,2,'2017-08-27','2017-09-02',2),
 (7,7,3,'2017-08-15','2017-08-20',1),
 (8,8,3,'2017-08-22','2017-08-25',1),
 (9,10,3,'2017-08-27','2017-09-05',2),
 (10,1,4,'2017-08-19','2017-08-25',2),
 (11,2,4,'2017-08-30','2017-09-02',1),
 (12,3,5,'2017-08-16','2017-08-17',2),
 (13,4,5,'2017-08-19','2017-08-20',1),
 (14,5,5,'2017-08-23','2017-08-25',1),
 (15,6,5,'2017-08-28','2017-08-29',2),
 (16,7,6,'2017-08-18','2017-08-20',2),
 (17,8,6,'2017-08-22','2017-08-23',2),
 (18,10,6,'2017-08-26','2017-08-28',1),
 (19,1,6,'2017-08-31','2017-09-01',2),
 (20,2,7,'2017-08-15','2017-08-25',1),
 (21,3,7,'2017-08-28','2017-09-03',2),
 (22,4,8,'2017-08-16','2017-08-18',1),
 (23,5,8,'2017-08-21','2017-08-22',2),
 (24,6,8,'2017-08-25','2017-08-27',1),
 (25,7,8,'2017-08-30','2017-08-31',1),
 (26,8,1,'2017-09-02','2017-09-05',2),
 (27,10,1,'2017-09-11','2017-09-15',1),
 (28,1,2,'2017-09-05','2017-09-08',2),
 (29,2,2,'2017-09-10','2017-09-11',1),
 (30,3,3,'2017-09-08','2017-09-15',2),
 (31,4,4,'2017-09-04','2017-09-06',1),
 (32,5,4,'2017-09-08','2017-09-10',1),
 (33,6,4,'2017-09-12','2017-09-13',2),
 (34,7,5,'2017-09-03','2017-09-04',1),
 (35,8,5,'2017-09-07','2017-09-08',2),
 (36,10,5,'2017-09-11','2017-09-12',2),
 (37,1,5,'2017-09-14','2017-09-15',2),
 (38,2,6,'2017-09-03','2017-09-04',2),
 (39,3,6,'2017-09-07','2017-09-10',2),
 (40,4,6,'2017-09-12','2017-09-15',1),
 (41,5,7,'2017-09-06','2017-09-10',2),
 (42,6,7,'2017-09-12','2017-09-15',1),
 (43,7,8,'2017-09-03','2017-09-06',2),
 (44,8,8,'2017-09-09','2017-09-10',1);
CREATE TABLE rooms
(
    id INT NOT NULL,
    floor INT DEFAULT 1 NOT NULL,
    room_type TEXT NOT NULL
);
INSERT INTO "rooms" (id,floor,room_type) VALUES (1,1,'Стандарт'),
 (2,2,'Стандарт'),
 (3,1,'Улучшенный 1'),
 (4,2,'Улучшенный 1'),
 (5,1,'Улучшенный 2'),
 (6,2,'Улучшенный 2'),
 (7,1,'Двухкомнатный'),
 (8,2,'Двухкомнатный');
CREATE TABLE "room_types" (
	"id"	INT,
	"capacity"	INT NOT NULL,
	"type"	TEXT NOT NULL UNIQUE,
	"description"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
INSERT INTO "room_types" (id,capacity,type,description) VALUES (4,6,'Двухкомнатный','Проживние: до 6 человек.  
Оплачивается ВЕСЬ НОМЕР в сутки.

В номере: евроремонт, 2-х спальная деревянная кровать(ортопедический матрац), мягкий раскладывающийся уголок, плазменный телевизор(кабельное TV), холодильник, кондиционер.

Удобства: в номере(душ, умывальник, туалет); горячая и холодная вода круглосуточно. '),
 (1,3,'Стандарт','Проживание: 2 - 3 человека.
Оплачивается каждый человек в сутки.
Детям от 3 до 10 лет скидка 30%
Детям до 3 лет цена проживания 40 грн.

В номере: евроремонт, холодильник, телевизор(кабельное TV).

Удобства: в номере(душ, умывальник, туалет), горячая и холодная вода круглосуточно.'),
 (2,5,'Улучшенный 1','Проживание: 2 - 5 человек.
Оплачивается каждый человек в сутки.
Детям от 3 до 10 лет скидка.
Детям до 3 лет цена проживания 40 грн.

В номере: евроремонт, холодильник, телевизор(кабельное TV), кондиционер.

Удобства: в номере(душ, умывальник, туалет); горячая и холодная вода круглосуточно).'),
 (3,5,'Улучшенный 2','Проживание: 2 - 5 человек.
Оплачивается каждый человек в сутки.
Детям от 3 до 10 лет скидка.
Детям до 3 лет цена проживания 40 грн.

В номере: новый евроремонт, холодильник, телевизор(кабельное TV), кондиционер.

Удобства: в номере(душ, умывальник, туалет); горячая и холодная вода круглосуточно).');
CREATE TABLE "prices" (
	"id"	INT NOT NULL,
	"room_type"	TEXT NOT NULL UNIQUE,
	"may"	INT NOT NULL,
	"june"	INT NOT NULL,
	"july"	INT NOT NULL,
	"august"	INT NOT NULL,
	"september"	INT NOT NULL,
	"child_3_price"	INT NOT NULL,
	"child_3_10_discount"	INT NOT NULL,
	PRIMARY KEY("id")
);
INSERT INTO "prices" (id,room_type,may,june,july,august,september,child_3_price,child_3_10_discount) VALUES (1,'Стандарт',109,109,219,219,109,40,30),
 (2,'Улучшенный 1',139,149,249,249,149,40,30),
 (3,'Улучшенный 2',149,159,279,279,159,40,30),
 (4,'Двухкомнатный',399,699,1099,1099,399,40,30);
CREATE TABLE "devices" (
	"id"	INTEGER,
	"pseudo_id"	TEXT UNIQUE,
	"phone_num"	TEXT,
	"name"	TEXT,
	PRIMARY KEY("id")
);
INSERT INTO "devices" (id,pseudo_id,phone_num,name) VALUES (1,'710f9449da83946b40e2fecf284ca1b3','+381994386321','V1277'),
 (2,'9702e7f2e676927cb5ee6902caf7ec5a','15555218135','Custom Phone - 7.1.0 - API 25 - 768x1280'),
 (3,'1913b8f16a4cfba4626ddb775f66f067','15555215554','Google Nexus S - 4.1.1 - API 16');
COMMIT;