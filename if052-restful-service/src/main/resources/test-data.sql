INSERT INTO `consumer`
    VALUES (1, 'USER_Name1', 'SURNAME1', 'MIDDLENAME1', 'LOGIN111', 'PASS1111', 'qwerty@gmail.com'),
           (2, 'USER_Name2', 'SURNAME2', 'MIDDLENAME2', 'LOGIN222', 'PASS2222', 'asdf@mail.ru'),
           (3, 'USER_Name3', 'SURNAME3', 'MIDDLENAME3', 'LOGIN333', 'PASS3333', 'zixel@i.ua');

INSERT INTO `role`
       VALUES (1, 'USER', 'User'),
               (2, 'ADMIN', 'Admin');

INSERT INTO `role_consumer`
       VALUES (1, 1, 1),
              (2, 2, 2),
              (3, 3, 1);

INSERT INTO `address`
    VALUES (1, 'Івано-Франківськ', 'Шевченка', '1', '2', 1),
           (2, 'Івано-Франківськ', 'Мазепи', '144', '144', 1),
           (3, 'Івано-Франківськ', 'Пулюя', '7', '1', 1),
           (4, 'CITY4', 'STREET4', 'BUILDING4', 'APARTMENT4', 2),
           (5, 'CITY5', 'STREET5', 'BUILDING5', 'APARTMENT5', 2),
           (6, 'CITY6', 'STREET6', 'BUILDING6', 'APARTMENT6', 2),
           (7, 'CITY7', 'STREET7', 'BUILDING7', 'APARTMENT7', 3),
           (8, 'CITY8', 'STREET8', 'BUILDING8', 'APARTMENT8', 3);


INSERT INTO `meter_type`
    VALUES (1, 'cold water'),
           (2, 'hot water'),
           (3, 'natural gas'),
           (4, 'electroenergy');

INSERT INTO `watermeter`
    VALUES (1,  'кухня',  'за холодильником', 1, 1, 0.1),
           (2,  'ванна',  'синій',            1, 2, 0.5),
           (3,  'туалет',  'квадратний',      1, 1, 0.1),
           (4,  'туалет',  'китайський',      2, 1, 0.2),
           (5,  'коридор',  'лівий',          2, 1, 0.2),
           (6,  'коридор',  'правий',         3, 1, 0.3),
           (7,  'кухня',  'старий',           3, 1, 0.3),
           (8,  'кухня',  'новий',            4, 1, 0.15),
           (9,  'WM_NAME9',  'DESCRIPTION9',  4, 1, 0.15),
           (10, 'WM_NAME10', 'DESCRIPTION10', 5, 1, 0.16),
           (11, 'WM_NAME11', 'DESCRIPTION11', 5, 1, 0.16),
           (12, 'WM_NAME12', 'DESCRIPTION12', 6, 1, 0.17),
           (13, 'WM_NAME13', 'DESCRIPTION13', 6, 1, 0.17),
           (14, 'WM_NAME14', 'DESCRIPTION14', 7, 1, 0.19),
           (15, 'WM_NAME15', 'DESCRIPTION15', 7, 1, 0.19),
           (16, 'WM_NAME16', 'DESCRIPTION16', 8, 1, 0.1),
           (17, 'WM_NAME17', 'DESCRIPTION17', 8, 1, 0.1),
           (18, 'WM_NAME18', 'DESCRIPTION18', 8, 1, 0.1),
           (19, 'WM_NAME19', 'DESCRIPTION19', 7, 1, 0.19),
           (20, 'WM_NAME20', 'DESCRIPTION20', 6, 1, 0.17),
           (21, 'WM_NAME21', 'DESCRIPTION21', 5, 1, 0.16),
           (22, 'WM_NAME22', 'DESCRIPTION22', 4, 1, 0.15),
           (23, 'WM_NAME23', 'DESCRIPTION23', 3, 1, 0.3),
           (24, 'WM_NAME24', 'DESCRIPTION24', 2, 1, 0.2),
           (25, 'WM_NAME25', 'DESCRIPTION25', 1, 1, 0.1);

INSERT INTO `indicator`
    VALUES (1,  '2015-01-01 00:00:00', 0.08,  51, 0, 0, 1),
           (2,  '2015-01-05 01:01:01', 0.08,  71, 1, 0, 1),
           (3,  '2015-01-10 00:00:00', 0.5,  101, 1, 1, 2),
           (4,  '2015-01-03 00:00:00', 0.1,  101, 1, 1, 3),
           (5,  '2015-01-04 00:00:00', 0.2,  101, 1, 1, 4),
           (6,  '2015-01-05 00:00:00', 0.3,  101, 1, 0, 5),
           (7,  '2015-01-10 02:02:02', 0.09, 101, 0, 0, 1),
           (8,  '2015-01-15 03:03:03', 0.09, 131, 0, 0, 1),
           (9,  '2015-01-20 05:05:05', 0.09, 151, 0, 0, 1),
           (10, '2015-01-25 23:00:00', 0.09, 181, 0, 0, 1),
           (11, '2015-01-30 23:01:00', 0.09, 201, 0, 0, 1),
           (12, '2015-02-05 23:02:00', 0.1,  226, 0, 0, 1),
           (13, '2015-02-10 23:03:00', 0.1,  251, 0, 0, 1),
           (14, '2015-02-15 23:04:00', 0.1,  281, 0, 0, 1),
           (15, '2015-02-20 23:05:00', 0.1,  301, 0, 0, 1);