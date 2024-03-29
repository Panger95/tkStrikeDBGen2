DROP TABLE IF EXISTS TKS_CATEGORY;
CREATE TABLE TKS_CATEGORY(ID VARCHAR(45) NOT NULL PRIMARY KEY,VERSION INTEGER,NAME VARCHAR(400),GENDER VARCHAR(10),SUBCATEGORY_ID VARCHAR(45),BODY_LEVEL INTEGER,HEAD_LEVEL INTEGER);
INSERT INTO TKS_CATEGORY VALUES
-- DRAGON FEMALE
('001',0,'FIN -19KG','FEMALE','0',6,5),
('002',0,'LIGHT -23KG','FEMALE','0',6,5),
('003',0,'MIDDLE -27KG','FEMALE','0',6,5),
('004',0,'HEAVY +27KG','FEMALE','0',6,5),
-- DRAGON MALE
('005',0,'FIN -19KG','MALE','0',6,5),
('006',0,'LIGHT -23KG','MALE','0',6,5),
('007',0,'MIDDLE -27KG','MALE','0',6,5),
('008',0,'HEAVY +27KG','MALE','0',6,5),
-- TIGER FEMALE
('009',0,'FIN -21KG','FEMALE','1',6,5),
('010',0,'LIGHT -25KG','FEMALE','1',6,5),
('011',0,'MIDDLE -30KG','FEMALE','1',7,5),
('012',0,'HEAVY +30KG','FEMALE','1',8,5),
-- TIGER MALE
('013',0,'FIN -21KG','MALE','1',6,5),
('014',0,'LIGHT -25KG','MALE','1',7,5),
('015',0,'MIDDLE -30KG','MALE','1',8,5),
('016',0,'HEAVY +30KG','MALE','1',9,5),
-- YOUTH FEMALE
('017',0,'FIN -30KG','FEMALE','2',8,5),
('018',0,'LIGHT -35KG','FEMALE','2',9,5),
('019',0,'MIDDLE -40KG','FEMALE','2',10,5),
('020',0,'HEAVY +40KG','FEMALE','2',11,5),
-- YOUTH MALE
('021',0,'FIN -30KG','MALE','2',9,5),
('022',0,'LIGHT -35KG','MALE','2',10,5),
('023',0,'MIDDLE -40KG','MALE','2',11,5),
('024',0,'HEAVY +40KG','MALE','2',12,5),
-- CADET FEMALE
('025',0,'FIN -29KG','FEMALE','3',10,5),
('026',0,'FLY -33KG','FEMALE','3',11,5),
('027',0,'BANTAM -37KG','FEMALE','3',13,5),
('028',0,'FEATHER -41KG','FEMALE','3',14,5),
('029',0,'LIGHT -44KG','FEMALE','3',15,5),
('030',0,'WELTER -47KG','FEMALE','3',16,5),
('031',0,'LIGHT MIDDLE -51KG','FEMALE','3',17,5),
('032',0,'MIDDLE -55KG','FEMALE','3',18,5),
('033',0,'LIGHT HEAVY -59KG','FEMALE','3',19,5),
('034',0,'HEAVY +59KG','FEMALE','3',20,5),
-- CADET MALE
('035',0,'FIN -33KG','MALE','3',12,5),
('036',0,'FLY -37KG','MALE','3',14,5),
('037',0,'BANTAM -41KG','MALE','3',15,5),
('038',0,'FEATHER -45KG','MALE','3',16,5),
('039',0,'LIGHT -49KG','MALE','3',17,5),
('040',0,'WELTER -53KG','MALE','3',18,5),
('041',0,'LIGHT MIDDLE -57KG','MALE','3',19,5),
('042',0,'MIDDLE -61KG','MALE','3',20,5),
('043',0,'LIGHT HEAVY -65KG','MALE','3',21,5),
('044',0,'HEAVY +65KG','MALE','3',22,5),
-- NEW CADET FEMALE
('045',0,'FIN -144CM 32-43KG','FEMALE','4',10,5),
('046',0,'FLY -148CM 33-45KG','FEMALE','4',11,5),
('047',0,'BANTAM -152CM 35-48KG','FEMALE','4',13,5),
('048',0,'FEATHER -156CM 37-51KG','FEMALE','4',14,5),
('049',0,'LIGHT -160CM 39-53KG','FEMALE','4',15,5),
('050',0,'WELTER -164CM 41-56KG','FEMALE','4',16,5),
('051',0,'LIGHT MIDDLE -168CM 43-59KG','FEMALE','4',17,5),
('052',0,'MIDDLE -172CM 45-61KG','FEMALE','4',18,5),
('053',0,'LIGHT HEAVY -176CM 47-64KG','FEMALE','4',19,5),
('054',0,'HEAVY +176CM 50-75KG','FEMALE','4',20,5),
-- NEW CADET MALE
('055',0,'FIN -148CM 33-45KG','MALE','4',12,5),
('056',0,'FLY -152CM 35-48KG','MALE','4',14,5),
('057',0,'BANTAM -156CM 37-51KG','MALE','4',15,5),
('058',0,'FEATHER -160CM 39-53KG','MALE','4',16,5),
('059',0,'LIGHT -164CM 41-56KG','MALE','4',17,5),
('060',0,'WELTER -168CM 43-59KG','MALE','4',18,5),
('061',0,'LIGHT MIDDLE -172CM 45-61KG','MALE','4',19,5),
('062',0,'MIDDLE -176CM 47-64KG','MALE','4',20,5),
('063',0,'LIGHT HEAVY 49-180CM -67KG','MALE','4',21,5),
('064',0,'HEAVY +180CM 52-80KG','MALE','4',22,5),
-- JUNIOR FEMALE
('065',0,'FIN -42KG','FEMALE','5',14,5),
('066',0,'FLY -44KG','FEMALE','5',15,5),
('067',0,'BANTAM -46KG','FEMALE','5',16,5),
('068',0,'FEATHER -49KG','FEMALE','5',17,5),
('069',0,'LIGHT -52KG','FEMALE','5',18,5),
('070',0,'WELTER -55KG','FEMALE','5',19,5),
('071',0,'LIGHT MIDDLE -59KG','FEMALE','5',20,5),
('072',0,'MIDDLE -63KG','FEMALE','5',21,5),
('073',0,'LIGHT HEAVY -68KG','FEMALE','5',22,5),
('074',0,'HEAVY +68KG','FEMALE','5',23,5),
-- JUNIOR MALE
('075',0,'FIN -45KG','MALE','5',17,5),
('076',0,'FLY -48KG','MALE','5',18,5),
('077',0,'BANTAM -51KG','MALE','5',19,5),
('078',0,'FEATHER -55KG','MALE','5',20,5),
('079',0,'LIGHT -59KG','MALE','5',21,5),
('080',0,'WELTER -63KG','MALE','5',22,5),
('081',0,'LIGHT MIDDLE -68KG','MALE','5',23,5),
('082',0,'MIDDLE -73KG','MALE','5',24,5),
('083',0,'LIGHT HEAVY -78KG','MALE','5',25,5),
('084',0,'HEAVY +78KG','MALE','5',26,5),
-- SENIOR FEMALE
('085',0,'FIN -46KG','FEMALE','6',17,5),
('086',0,'FLY -49KG','FEMALE','6',18,5),
('087',0,'BANTAM -53KG','FEMALE','6',19,5),
('088',0,'FEATHER -57KG','FEMALE','6',20,5),
('089',0,'LIGHT -62KG','FEMALE','6',21,5),
('090',0,'WELTER -67KG','FEMALE','6',22,5),
('091',0,'MIDDLE -73KG','FEMALE','6',23,5),
('092',0,'HEAVY +73KG','FEMALE','6',24,5),
-- SENIOR MALE
('093',0,'FIN -54KG','MALE','6',21,5),
('094',0,'FLY -58KG','MALE','6',22,5),
('095',0,'BANTAM -63KG','MALE','6',23,5),
('096',0,'FEATHER -68KG','MALE','6',24,5),
('097',0,'LIGHT -74KG','MALE','6',25,5),
('098',0,'WELTER -80KG','MALE','6',26,5),
('099',0,'MIDDLE -87KG','MALE','6',27,5),
('100',0,'HEAVY +87KG','MALE','6',28,5),
-- ULTRA FEMALE
('101',0,'FLY -49KG','FEMALE','7',16,5),
('102',0,'LIGHT -57KG','FEMALE','7',18,5),
('103',0,'MIDDLE -67KG','FEMALE','7',20,5),
('104',0,'HEAVY +67KG','FEMALE','7',22,5),
-- ULTRA MALE
('105',0,'FLY -58KG','MALE','7',19,5),
('106',0,'LIGHT -68KG','MALE','7',21,5),
('107',0,'MIDDLE -80KG','MALE','7',23,5),
('108',0,'HEAVY +80KG','MALE','7',25,5),
-- OLYMPIC FEMALE
('109',0,'FLY -49KG','FEMALE','8',18,5),
('110',0,'FEATHER -57KG','FEMALE','8',20,5),
('111',0,'WELTER -67KG','FEMALE','8',22,5),
('112',0,'HEAVY +67KG','FEMALE','8',24,5),
-- OLYMPIC MALE
('113',0,'FLY -58KG','MALE','8',22,5),
('114',0,'FEATHER -68KG','MALE','8',24,5),
('115',0,'WELTER -80KG','MALE','8',26,5),
('116',0,'HEAVY +80KG','MALE','8',28,5),
-- CADET MIN FEMALE
('117',0,'FLY -33KG','FEMALE','9',10,5),
('118',0,'FEATHER -41KG','FEMALE','9',13,5),
('119',0,'WELTER -47KG','FEMALE','9',15,5),
('120',0,'MIDDLE -55KG','FEMALE','9',17,5),
('121',0,'HEAVY +55KG','FEMALE','9',19,5),
-- CADET MIN MALE
('122',0,'FLY -37KG','MALE','9',12,5),
('123',0,'FEATHER -45KG','MALE','9',15,5),
('124',0,'WELTER -53KG','MALE','9',17,5),
('125',0,'MIDDLE -61KG','MALE','9',19,5),
('126',0,'HEAVY +61KG','MALE','9',21,5),
-- JUNIOR MIN FEMALE
('127',0,'FLY -44KG','FEMALE','10',14,5),
('128',0,'FEATHER -49KG','FEMALE','10',16,5),
('129',0,'WELTER -55KG','FEMALE','10',18,5),
('130',0,'MIDDLE -63KG','FEMALE','10',20,5),
('131',0,'HEAVY +63KG','FEMALE','10',22,5),
-- JUNIOR MIN MALE
('132',0,'FLY -48KG','MALE','10',17,5),
('133',0,'FEATHER -55KG','MALE','10',19,5),
('134',0,'WELTER -63KG','MALE','10',21,5),
('135',0,'MIDDLE -73KG','MALE','10',23,5),
('136',0,'HEAVY +73KG','MALE','10',25,5),
-- SENIOR MIN FEMALE
('137',0,'FLY -49KG','FEMALE','11',17,5),
('138',0,'FEATHER -57KG','FEMALE','11',19,5),
('139',0,'WELTER -67KG','FEMALE','11',21,5),
('140',0,'HEAVY +67KG','FEMALE','11',23,5),
-- SENIOR MIN MALE
('141',0,'FLY -58KG','MALE','11',21,5),
('142',0,'FEATHER -68KG','MALE','11',23,5),
('143',0,'WELTER -80KG','MALE','11',25,5),
('144',0,'HEAVY +80KG','MALE','11',27,5),
-- GEN1 COLOR CADET FEMALE
('145',0,'FIN -29KG','FEMALE','12',13,5),
('146',0,'FLY -33KG','FEMALE','12',14,5),
('147',0,'BANTAM -37KG','FEMALE','12',15,5),
('148',0,'FEATHER -41KG','FEMALE','12',16,5),
('149',0,'LIGHT -44KG','FEMALE','12',17,5),
('150',0,'WELTER -47KG','FEMALE','12',18,5),
('151',0,'LIGHT MIDDLE -51KG','FEMALE','12',19,5),
('152',0,'MIDDLE -55KG','FEMALE','12',20,5),
('153',0,'LIGHT HEAVY -59KG','FEMALE','12',21,5),
('154',0,'HEAVY +59KG','FEMALE','12',22,5),
-- GEN1 COLOR CADET MALE
('155',0,'FIN -33KG','MALE','12',14,5),
('156',0,'FLY -37KG','MALE','12',15,5),
('157',0,'BANTAM -41KG','MALE','12',16,5),
('158',0,'FEATHER -45KG','MALE','12',18,5),
('159',0,'LIGHT -49KG','MALE','12',19,5),
('160',0,'WELTER -53KG','MALE','12',21,5),
('161',0,'LIGHT MIDDLE -57KG','MALE','12',22,5),
('162',0,'MIDDLE -61KG','MALE','12',24,5),
('163',0,'LIGHT HEAVY -65KG','MALE','12',25,5),
('164',0,'HEAVY +65KG','MALE','12',27,5),
-- GEN1 COLOR JUNIOR FEMALE
('165',0,'FIN -42KG','FEMALE','13',16,5),
('166',0,'FLY -44KG','FEMALE','13',17,5),
('167',0,'BANTAM -46KG','FEMALE','13',18,5),
('168',0,'FEATHER -49KG','FEMALE','13',19,5),
('169',0,'LIGHT -52KG','FEMALE','13',20,5),
('170',0,'WELTER -55KG','FEMALE','13',21,5),
('171',0,'LIGHT MIDDLE -59KG','FEMALE','13',22,5),
('172',0,'MIDDLE -63KG','FEMALE','13',23,5),
('173',0,'LIGHT HEAVY -68KG','FEMALE','13',24,5),
('174',0,'HEAVY +68KG','FEMALE','13',25,5),
-- GEN1 COLOR JUNIOR MALE
('175',0,'FIN -45KG','MALE','13',17,5),
('176',0,'FLY -48KG','MALE','13',18,5),
('177',0,'BANTAM -51KG','MALE','13',19,5),
('178',0,'FEATHER -55KG','MALE','13',21,5),
('179',0,'LIGHT -59KG','MALE','13',22,5),
('180',0,'WELTER -63KG','MALE','13',24,5),
('181',0,'LIGHT MIDDLE -68KG','MALE','13',25,5),
('182',0,'MIDDLE -73KG','MALE','13',27,5),
('183',0,'LIGHT HEAVY -78KG','MALE','13',28,5),
('184',0,'HEAVY +78KG','MALE','13',30,5),
-- GEN1 COLOR SENIOR FEMALE
('185',0,'FIN -46KG','FEMALE','14',22,5),
('186',0,'FLY -49KG','FEMALE','14',25,5),
('187',0,'BANTAM -53KG','FEMALE','14',26,5),
('188',0,'FEATHER -57KG','FEMALE','14',27,5),
('189',0,'LIGHT -62KG','FEMALE','14',28,5),
('190',0,'WELTER -67KG','FEMALE','14',30,5),
('191',0,'MIDDLE -73KG','FEMALE','14',31,5),
('192',0,'HEAVY +73KG','FEMALE','14',32,5),
-- GEN1 COLOR SENIOR MALE
('193',0,'FIN -54KG','MALE','14',26,5),
('194',0,'FLY -58KG','MALE','14',30,5),
('195',0,'BANTAM -63KG','MALE','14',31,5),
('196',0,'FEATHER -68KG','MALE','14',32,5),
('197',0,'LIGHT -74KG','MALE','14',33,5),
('198',0,'WELTER -80KG','MALE','14',34,5),
('199',0,'MIDDLE -87KG','MALE','14',36,5),
('200',0,'HEAVY +87KG','MALE','14',38,5),
-- GEN1 KIDS 4-5 FEMALE
('201',0,'FIN -15KG','FEMALE','15',4,5),
('202',0,'LIGHT -17KG','FEMALE','15',4,5),
('203',0,'MIDDLE -19KG','FEMALE','15',5,5),
('204',0,'HEAVY +19KG','FEMALE','15',5,5),
-- GEN1 KIDS 4-5 MALE
('205',0,'FIN -15KG','MALE','15',4,5),
('206',0,'LIGHT -17KG','MALE','15',4,5),
('207',0,'MIDDLE -19KG','MALE','15',5,5),
('208',0,'HEAVY +19KG','MALE','15',5,5),
-- GEN1 KIDS 6-7 FEMALE
('209',0,'FIN -19KG','FEMALE','16',6,5),
('210',0,'LIGHT -23KG','FEMALE','16',6,5),
('211',0,'MIDDLE -27KG','FEMALE','16',6,5),
('212',0,'HEAVY +27KG','FEMALE','16',6,5),
-- GEN1 KIDS 6-7 MALE
('213',0,'FIN -19KG','MALE','16',6,5),
('214',0,'LIGHT -23KG','MALE','16',6,5),
('215',0,'MIDDLE -27KG','MALE','16',6,5),
('216',0,'HEAVY +27KG','MALE','16',6,5),
-- GEN1 KIDS 8-9 FEMALE
('217',0,'FIN -21KG','FEMALE','17',8,5),
('218',0,'LIGHT -25KG','FEMALE','17',10,5),
('219',0,'MIDDLE -30KG','FEMALE','17',12,5),
('220',0,'HEAVY +30KG','FEMALE','17',13,5),
-- GEN1 KIDS 8-9 MALE
('221',0,'FIN -21KG','MALE','17',8,5),
('222',0,'LIGHT -25KG','MALE','17',10,5),
('223',0,'MIDDLE -30KG','MALE','17',12,5),
('224',0,'HEAVY +30KG','MALE','17',13,5),
-- PARA K41 FEMALE
('225',0,'FLY -47KG','FEMALE','18',15,5),
('226',0,'FEATHER -52KG','FEMALE','18',16,5),
('227',0,'WELTER -57KG','FEMALE','18',17,5),
('228',0,'MIDDLE -65KG','FEMALE','18',18,5),
('229',0,'HEAVY +65KG','FEMALE','18',20,5),
-- PARA K41 MALE
('230',0,'FLY -58KG','MALE','18',19,5),
('231',0,'FEATHER -63KG','MALE','18',20,5),
('232',0,'WELTER -70KG','MALE','18',21,5),
('233',0,'MIDDLE -80KG','MALE','18',22,5),
('234',0,'HEAVY +80KG','MALE','18',24,5),
-- PARA K44 FEMALE
('235',0,'FLY -47KG','FEMALE','19',15,5),
('236',0,'FEATHER -52KG','FEMALE','19',16,5),
('237',0,'WELTER -57KG','FEMALE','19',17,5),
('238',0,'MIDDLE -65KG','FEMALE','19',18,5),
('239',0,'HEAVY +65KG','FEMALE','19',20,5),
-- PARA K44 MALE
('240',0,'FLY -58KG','MALE','19',19,5),
('241',0,'FEATHER -63KG','MALE','19',20,5),
('242',0,'WELTER -70KG','MALE','19',21,5),
('243',0,'MIDDLE -80KG','MALE','19',22,5),
('244',0,'HEAVY +80KG','MALE','19',24,5);