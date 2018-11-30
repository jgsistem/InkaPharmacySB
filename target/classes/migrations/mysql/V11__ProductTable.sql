CREATE TABLE  IF NOT EXISTS product (
product_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  price DECIMAL(19,4) NOT NULL,
  currency VARCHAR(3) NOT NULL,
  stock INT NOT NULL,
  category_id BIGINT UNSIGNED NOT NULL,
  lot_number VARCHAR(40) NULL,
  sanitary_registration_number VARCHAR(40) NULL,
  registration_date DATETIME(6) NULL,
  expiration_date DATETIME(6) NULL,
  status INT NULL,
  stock_status INT NULL,
  PRIMARY KEY (product_id),
  CONSTRAINT FK__medicamen__cod_c__1A14E395
    FOREIGN KEY (category_id)
    REFERENCES category (category_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
	ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

	INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('Amoxicilina','0.5','PEN','100','1','20180101','RS20180001','2018-01-01','2020-01-01',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('Penicilina','0.7','PEN','200','2','20180102','RS20180002','2018-01-02','2020-01-02',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('Amikacina','47.9','PEN','20','3','20180103','RS20180003','2018-01-03','2020-01-03',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('Claritromicina','1.0','PEN','23','4','20180104','RS20180004','2018-01-04','2020-01-04',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('Dicloxacilina','0.8','PEN','26','5','20180105','RS20180005','2018-01-05','2020-01-05',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('Tupotocina','0.9','PEN','29','6','20180106','RS20180006','2018-01-06','2020-01-06',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('Chapopoticina','0.6','PEN','32','7','20180107','RS20180007','2018-01-07','2020-01-07',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('Bimbocina','0.2','PEN','35','8','20180108','RS20180008','2018-01-08','2020-01-08',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('Paracetamol','0.3','PEN','38','9','20180109','RS20180009','2018-01-09','2020-01-09',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('Ibuprofeno','0.1','PEN','41','10','20180110','RS20180010','2018-01-10','2020-01-10',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('Critantec','99.0','PEN','44','11','20180111','RS20180011','2018-01-01','2020-01-01',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('Gaap','90.0','PEN','47','12','20180112','RS20180012','2018-01-02','2020-01-02',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('Lidocaina','10.0','PEN','50','1','20180113','RS20180013','2018-01-03','2020-01-03',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('Tartracina','5.0','PEN','53','2','20180114','RS20180014','2018-01-04','2020-01-04',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('DISLEP COMPRIMIDOS  25 MG','23.1','PEN','56','3','20180115','RS20180015','2018-01-05','2020-01-05',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('DISLEP GOTAS POR 25 MG','20.1','PEN','59','4','20180116','RS20180016','2018-01-06','2020-01-06',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('DULSAR POLVO','0.5','PEN','62','5','20180117','RS20180017','2018-01-07','2020-01-07',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('EFFIENT 5 MG','0.7','PEN','65','6','20180118','RS20180018','2018-01-08','2020-01-08',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('EFFIENT 10 MG','47.9','PEN','68','7','20180119','RS20180019','2018-01-09','2020-01-09',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('EMULSION DE SCOTT','1.0','PEN','71','8','20180120','RS20180020','2018-01-10','2020-01-10',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('EPOYET','0.8','PEN','74','9','20180121','RS20180021','2018-01-01','2020-01-01',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('EPOYET 2000','0.9','PEN','77','10','20180122','RS20180022','2018-01-02','2020-01-02',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('EPOYET 4000','0.6','PEN','80','11','20180123','RS20180023','2018-01-03','2020-01-03',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('EPREX 10000 UI','0.2','PEN','83','12','20180124','RS20180024','2018-01-04','2020-01-04',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('ERITINA INYECTABLE 2000','0.3','PEN','86','1','20180125','RS20180025','2018-01-05','2020-01-05',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('ERITROPOYETINA 2000','0.1','PEN','89','2','20180126','RS20180026','2018-01-06','2020-01-06',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('ERITROPOYETINA HUMANA','99.0','PEN','92','3','20180127','RS20180027','2018-01-07','2020-01-07',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('ESCOMED LOCION 1G','90.0','PEN','95','4','20180128','RS20180028','2018-01-08','2020-01-08',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('ESMERON 100 MG','10.0','PEN','98','5','20180129','RS20180029','2018-01-09','2020-01-09',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('ESPASMOBIL','5.0','PEN','101','6','20180130','RS20180030','2018-01-10','2020-01-10',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('ESPASMOBIL GOTAS','23.1','PEN','104','7','20180131','RS20180031','2018-01-01','2020-01-01',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('ESPASMOBIL GRAGEAS','20.1','PEN','107','8','20180132','RS20180032','2018-01-02','2020-01-02',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('ESTAVUDINA 40MG LAMIVUDINA','0.5','PEN','110','9','20180133','RS20180033','2018-01-03','2020-01-03',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('EUMOTRIX PLUS','0.7','PEN','113','10','20180134','RS20180034','2018-01-04','2020-01-04',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('EXFORGE HCT 5','47.9','PEN','116','11','20180135','RS20180035','2018-01-05','2020-01-05',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('FALMONOX R TABLETAS','1.0','PEN','119','12','20180136','RS20180036','2018-01-06','2020-01-06',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('FALMONOX SUSPENSION','0.8','PEN','122','1','20180137','RS20180037','2018-01-07','2020-01-07',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('FAVINT CAPSULAS CON POLVO','0.9','PEN','125','2','20180138','RS20180038','2018-01-08','2020-01-08',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('FERANIN JARABE 50 MG ML','0.2','PEN','131','4','20180140','RS20180040','2018-01-10','2020-01-10',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('FERROPROTINA 40 MG GRANULADO','0.3','PEN','134','5','20180141','RS20180041','2018-01-01','2020-01-01',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('FITOSTIMOLINE DUCHA VAGINAL','0.1','PEN','137','6','20180142','RS20180042','2018-01-02','2020-01-02',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('FLEXTRIL C MSM SOBRES','99.0','PEN','140','7','20180143','RS20180043','2018-01-03','2020-01-03',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('FLEXURE G TABS','90.0','PEN','143','8','20180144','RS20180044','2018-01-04','2020-01-04',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('FRIXODOL','10.0','PEN','146','9','20180145','RS20180045','2018-01-05','2020-01-05',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('GALAC H','5.0','PEN','149','10','20180146','RS20180046','2018-01-06','2020-01-06',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('GALVUS MET COMPRIMIDO ','23.1','PEN','152','11','20180147','RS20180047','2018-01-07','2020-01-07',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('GALVUS 50 MG COMPRIMIDOS','20.1','PEN','155','12','20180148','RS20180048','2018-01-08','2020-01-08',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('GASPRID M 5 MG TABLETAS','0.5','PEN','158','1','20180149','RS20180049','2018-01-09','2020-01-09',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('GAVISCON LIQUIDO SACHET','47.9','PEN','164','3','20180151','RS20180051','2018-01-01','2020-01-01',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('GAVISCON LIQUIDO SUSPESION','1.0','PEN','167','4','20180152','RS20180052','2018-01-02','2020-01-02',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('GLICO NECROTON INYECTABLE','0.8','PEN','170','5','20180153','RS20180053','2018-01-03','2020-01-03',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('GLICORATIN','0.9','PEN','173','6','20180154','RS20180054','2018-01-04','2020-01-04',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('GLUCOSAMINA CONDROITINA','0.6','PEN','176','7','20180155','RS20180055','2018-01-05','2020-01-05',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('GOTLAND CARTIX CM POLVO','0.3','PEN','182','9','20180157','RS20180057','2018-01-07','2020-01-07',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('GOTRONAL TABLETAS','0.1','PEN','185','10','20180158','RS20180058','2018-01-08','2020-01-08',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('GYNCLOX CREMA VAGINAL','99.0','PEN','188','11','20180159','RS20180059','2018-01-09','2020-01-09',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('GYNOCLIN CREMA','90.0','PEN','191','12','20180160','RS20180060','2018-01-10','2020-01-10',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('GYNOPLUS OVULOS','10.0','PEN','194','1','20180161','RS20180061','2018-01-01','2020-01-01',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('HAVRIX 720 JUNIOR','5.0','PEN','197','2','20180162','RS20180062','2018-01-02','2020-01-02',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('HEMOHES 6 SUSTITUTO','23.1','PEN','200','3','20180163','RS20180063','2018-01-03','2020-01-03',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('HERREX FOL GRAGEAS','20.1','PEN','203','4','20180164','RS20180064','2018-01-04','2020-01-04',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('HERREX FOL JARABE','0.5','PEN','206','5','20180165','RS20180065','2018-01-05','2020-01-05',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('HIALTEARS','0.7','PEN','209','6','20180166','RS20180066','2018-01-06','2020-01-06',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('HIDRAPLUS','47.9','PEN','212','7','20180167','RS20180067','2018-01-07','2020-01-07',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('HIOSCINA 20 MG DIPIRONA','1.0','PEN','215','8','20180168','RS20180068','2018-01-08','2020-01-08',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('HIOSCINA N BUTIL BROMURO','0.8','PEN','218','9','20180169','RS20180069','2018-01-09','2020-01-09',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('ILOSONE TABLETAS DE 500 MG ','0.6','PEN','224','11','20180171','RS20180071','2018-01-01','2020-01-01',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('IMATINIB TABLETAS 400 MG','0.2','PEN','227','12','20180172','RS20180072','2018-01-02','2020-01-02',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('INVEGA SUSTENNA SUSPENSION','0.3','PEN','230','1','20180173','RS20180073','2018-01-03','2020-01-03',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('IRESSA 250 MG COMPRIMIDOS','0.1','PEN','233','2','20180174','RS20180074','2018-01-04','2020-01-04',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('ISENTRESS RALTEGRAVIR 400 MG','99.0','PEN','236','3','20180175','RS20180075','2018-01-05','2020-01-05',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('JALRA 50 MG TABLETAS','90.0','PEN','239','4','20180176','RS20180076','2018-01-06','2020-01-06',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('KALETRA CAPSULAS','10.0','PEN','242','5','20180177','RS20180077','2018-01-07','2020-01-07',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('L ASPARAGINASA FILAXIS','5.0','PEN','245','6','20180178','RS20180078','2018-01-08','2020-01-08',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('LACRIL SOLUCION OFTALMICA','23.1','PEN','248','7','20180179','RS20180079','2018-01-09','2020-01-09',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('LACRYVISC GEL UNIDOSIS','20.1','PEN','251','8','20180180','RS20180080','2018-01-10','2020-01-10',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('LADY MEXSANA TALCO MEDICINAL','0.5','PEN','254','9','20180181','RS20180081','2018-01-01','2020-01-01',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('LECHE DE MAGNESIA SUSPENSI N','0.7','PEN','257','10','20180182','RS20180082','2018-01-02','2020-01-02',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('LEMATIN 100MG TABLETAS','47.9','PEN','260','11','20180183','RS20180083','2018-01-03','2020-01-03',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('LEMATIN 400 MG TABLETAS','1.0','PEN','263','12','20180184','RS20180084','2018-01-04','2020-01-04',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('LEPRIT ENZIMATICO GRAGEAS','0.8','PEN','266','1','20180185','RS20180085','2018-01-05','2020-01-05',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('LEVEMIR SOLUC INYECT','0.9','PEN','269','2','20180186','RS20180086','2018-01-06','2020-01-06',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('LIBERTRIM SII COMPRIMIDOS','0.6','PEN','272','3','20180187','RS20180087','2018-01-07','2020-01-07',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('LINIMENTO VENECIANO N  9','0.2','PEN','275','4','20180188','RS20180088','2018-01-08','2020-01-08',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('LIRODERM LOCION 10 ','0.3','PEN','278','5','20180189','RS20180089','2018-01-09','2020-01-09',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('MATIB IMATINIB 400 MG ','99.0','PEN','284','7','20180191','RS20180091','2018-01-01','2020-01-01',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('MENOCAL POLVO','10.0','PEN','290','9','20180193','RS20180093','2018-01-03','2020-01-03',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('MEXSANA POLVO MEDICADO ','5.0','PEN','293','10','20180194','RS20180094','2018-01-04','2020-01-04',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('MEZQUINOL SOLUCION','23.1','PEN','296','11','20180195','RS20180095','2018-01-05','2020-01-05',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('MIOCHOL','20.1','PEN','299','12','20180196','RS20180096','2018-01-06','2020-01-06',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('MIRCERA SOLUCION INYECTABLE','0.5','PEN','302','1','20180197','RS20180097','2018-01-07','2020-01-07',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('MISOPROS V 200 MCG TABLETAS','0.7','PEN','305','2','20180198','RS20180098','2018-01-08','2020-01-08',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('MOFLOXIN TABLETAS 400MG','47.9','PEN','308','3','20180199','RS20180099','2018-01-09','2020-01-09',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('MOSIDE 5MG TABLETAS','1.0','PEN','311','4','20180200','RS20180100','2018-01-10','2020-01-10',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('MOXAR SI TABLETAS','0.8','PEN','314','5','20180201','RS20180101','2018-01-01','2020-01-01',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('MOXIFLOXACINO 400 MG','0.9','PEN','317','6','20180202','RS20180102','2018-01-02','2020-01-02',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('MULTAQ 400 MG TABLETAS','0.6','PEN','320','7','20180203','RS20180103','2018-01-03','2020-01-03',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('NANO ALBUMON','0.3','PEN','326','9','20180205','RS20180105','2018-01-05','2020-01-05',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('NEKO LOCION','0.1','PEN','329','10','20180206','RS20180106','2018-01-06','2020-01-06',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('NEURO 15 FOSFORO','99.0','PEN','332','11','20180207','RS20180107','2018-01-07','2020-01-07',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('NITROFUR POMADA','90.0','PEN','335','12','20180208','RS20180108','2018-01-08','2020-01-08',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('NITROFURAZONA 0 2 POMADA','10.0','PEN','338','2','20180209','RS20180109','2018-01-09','2020-01-09',1,1);
INSERT INTO product (name,price,currency,stock,category_id,lot_number,sanitary_registration_number,registration_date,expiration_date,status,stock_status) VALUES ('NITROZIN','5.0','PEN','341','2','20180210','RS20180110','2018-01-10','2020-01-10',1,1);