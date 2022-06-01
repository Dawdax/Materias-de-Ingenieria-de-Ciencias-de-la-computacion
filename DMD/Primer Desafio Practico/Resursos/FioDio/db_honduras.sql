
create database db_roaming_honduras
GO
USE db_roaming_honduras

create table tipo_clientes
(
	idtipocliente integer not null primary key,
	nombre_tipo   varchar(100) not null
);
GO
insert into tipo_clientes values (1,'CLIENTE PREFERENCIAL');
insert into tipo_clientes values (2,'CLIENTE EJECUTIVO');
insert into tipo_clientes values (3,'CLIENTE TURISTA');
insert into tipo_clientes values (4,'CLIENTE GUBERNAMENTAL');
GO
create table cliente 
(
	idcliente integer not null primary key,
	idtipocliente integer not null,
	codigo_cliente varchar(15) not null,
	dui varchar(9) not null,
	nit varchar(14) not null,
	apellidos varchar(250) not null,
	nombres varchar(250) not null,
	sexo char(1) not null,
	numero_telefono varchar(8) not null,
	estado char(1) not null,
	CONSTRAINT fk_cliente_reference_tipocliente FOREIGN KEY (idtipocliente) REFERENCES tipo_clientes(idtipocliente)
);
GO
create table facturacion
(
	idfacturacion integer not null identity  primary key,
	idcliente integer not null,
	monto_facturacion decimal(10,2) not null,
	CONSTRAINT fk_facturacion_reference_clientes FOREIGN KEY (idcliente) REFERENCES cliente(idcliente)
);

GO
insert into cliente values (1421,1,'sv-mn1421','014482905','02100107651014','MARROQUIN AREVALO','NESTOR MARIO','m','77407501','f');
insert into facturacion (idcliente,monto_facturacion) values (1421,56);
insert into cliente values (2164,1,'sv-mg2164','018045721','02102502640021','MAYORGA RAMIREZ','GABRIEL ANTONIO','m','70705723','t');
insert into facturacion (idcliente,monto_facturacion) values (2164,90.6);
insert into cliente values (30105,1,'sv-mj30105','006305814','06142202811036','MARROQUIN MARROQUIN','JAIME RAUL','m','79767136','t');
insert into facturacion (idcliente,monto_facturacion) values (30105,80.1);
insert into cliente values (5909,1,'sv-rr5909','033652129','06101509821073','RAMIREZ DEODANES','ROBERTO','m','75369733','t');
insert into facturacion (idcliente,monto_facturacion) values (5909,121.8);
insert into cliente values (47673,1,'sv-lr47673','020540517','06141909811370','LARA CACERES','RICARDO ERNESTO','m','79857656','f');
insert into facturacion (idcliente,monto_facturacion) values (47673,161.7);
insert into cliente values (47630,1,'sv-sr47630','004240783','10080502561016','SANCHEZ MARTINEZ','RAUL','m','74398467','t');
insert into facturacion (idcliente,monto_facturacion) values (47630,42.6);
insert into cliente values (13188,1,'sv-pa13188','004669026','10112802731010','PINO MERINO','ANGEL VICTOR','m','79232040','t');
insert into facturacion (idcliente,monto_facturacion) values (13188,178.4);
insert into cliente values (47665,1,'sv-cj47665','003719006','05150802480019','CASTILLO MEZQUITA','JUAN JUVENCIO','m','78514479','t');
insert into facturacion (idcliente,monto_facturacion) values (47665,135.8);
insert into cliente values (42266,1,'sv-gc42266','015646170','05111211811026','GHIRINGHELLO ROSALES','CARLOS RICARDO','f','72471706','f');
insert into facturacion (idcliente,monto_facturacion) values (42266,57.1);
insert into cliente values (8266,1,'sv-ma8266','005598692','06141903671011','MENDEZ BENITEZ','ALICIA ORBELINA','m','70705856','t');
insert into facturacion (idcliente,monto_facturacion) values (8266,148.9);
insert into cliente values (47677,2,'sv-pg47677','009276454','05222004721013','POCASANGRE HUEZO','GUILLERMO','m','77894991','t');
insert into facturacion (idcliente,monto_facturacion) values (47677,136.4);
insert into cliente values (47627,2,'sv-me47627','024544296','06072702650017','MARROQUIN AMAYA','EVELYN DE LOS ANGELES','f','70704632','t');
insert into facturacion (idcliente,monto_facturacion) values (47627,197.9);
insert into cliente values (47676,2,'sv-rj47676','008816594','05120304701017','RAMOS PEREZ','JACOBO','m','71651054','f');
insert into facturacion (idcliente,monto_facturacion) values (47676,92.2);
insert into cliente values (47683,2,'sv-cb47683','010622294','11092505831024','CRUZ AMAYA','BLANCA MARIBEL','f','78866026','t');
insert into facturacion (idcliente,monto_facturacion) values (47683,167.7);
insert into cliente values (47679,2,'sv-rj47679','000883872','14162712781010','REYES SALAZAR','JUAN DAVID','m','70710453','f');
insert into facturacion (idcliente,monto_facturacion) values (47679,146.2);
insert into cliente values (47710,2,'sv-ch47710','016954788','13242208681012','CHACON ARGUETA','HECTOR MANUEL','m','77781096','t');
insert into facturacion (idcliente,monto_facturacion) values (47710,41.3);
insert into cliente values (47711,2,'sv-ms47711','043265819','11230112901016','MEDRANO RODRIGUEZ','SAMUEL GERARDO','m','78692068','t');
insert into facturacion (idcliente,monto_facturacion) values (47711,109.7);
insert into cliente values (47712,2,'sv-he47712','017719377','06140209801181','HERNANDEZ DURAN','ERICK STEFFAN','m','76955228','t');
insert into facturacion (idcliente,monto_facturacion) values (47712,182.3);
insert into cliente values (25309,2,'sv-ge25309','025756545','14072012811016','GONZALEZ ','EDWIN JOVANY','m','74100034','t');
insert into facturacion (idcliente,monto_facturacion) values (25309,81.9);
insert into cliente values (47595,2,'sv-gm47595','018904967','05022502510015','GUARDADO ','MARIO','m','79289424','t');
insert into facturacion (idcliente,monto_facturacion) values (47595,159.4);
insert into cliente values (47657,3,'sv-dr47657','008644581','03120503650014','DIAZ DE CORVERA','ROSSANA ELISABETH','f','74575307','t');
insert into facturacion (idcliente,monto_facturacion) values (47657,141.9);
insert into cliente values (47655,3,'sv-mm47655','023262697','06141706681145','MELARA CASTILLO','MARITZA DEL CARMEN','f','78332541','t');
insert into facturacion (idcliente,monto_facturacion) values (47655,107.3);
insert into cliente values (47654,3,'sv-le47654','019451365','06141810711153','LOPEZ DE CARDOZA','EVELYN ELIZABETH','f','78332389','t');
insert into facturacion (idcliente,monto_facturacion) values (47654,91.7);
insert into cliente values (47658,3,'sv-em47658','003749849','06190301791017','ERAZO VASQUEZ','MARVIN VITELIO','m','77865956','f');
insert into facturacion (idcliente,monto_facturacion) values (47658,46.7);
insert into cliente values (47671,3,'sv-rm47671','007381512','06143105701141','RIVERA MEDRANO','MANUEL ALFREDO','m','71895007','t');
insert into facturacion (idcliente,monto_facturacion) values (47671,151.4);
insert into cliente values (47715,3,'sv-hg47715','038162064','06142410871140','HERNANDEZ MEMBREÑO','GUSTAVO RAFAEL','m','71048822','t');
insert into facturacion (idcliente,monto_facturacion) values (47715,181.5);
insert into cliente values (47690,3,'sv-af47690','012967399','02100406610027','ALARCON SANDOVAL','FRANCISCO ANTONIO','m','78700337','t');
insert into facturacion (idcliente,monto_facturacion) values (47690,32.4);
insert into cliente values (47662,3,'sv-lj47662','039759694','06122408881013','LOPEZ URQUILLA','JORGE MATEO','m','78326391','t');
insert into facturacion (idcliente,monto_facturacion) values (47662,102.9);
insert into cliente values (47672,3,'sv-al47672','004928389','02100203821052','ALVAREZ HERNANDEZ','LUIS ALONSO','m','76631438','f');
insert into facturacion (idcliente,monto_facturacion) values (47672,150.9);
insert into cliente values (47704,3,'sv-ff47704','010547135','05110702821019','FLORES SARMIENTO','FRANCISCO STEVE','m','79211113','t');
insert into facturacion (idcliente,monto_facturacion) values (47704,35.4);
insert into cliente values (22084,4,'sv-dy22084','011308479','11230804761036','DE LA O CHAVEZ','YANIRA DEL CARMEN','f','75940982','t');
insert into facturacion (idcliente,monto_facturacion) values (22084,45.3);
insert into cliente values (47675,4,'sv-lj47675','034541664','08212801801052','LOPEZ ROMERO','JORGE ALBERTO','m','71146362','t');
insert into facturacion (idcliente,monto_facturacion) values (47675,59.2);
insert into cliente values (47714,4,'sv-me47714','004495689','10091002791017','MEJIA MOLINA','ERIC ALEXANDER','m','70831594','t');
insert into facturacion (idcliente,monto_facturacion) values (47714,30.7);
insert into cliente values (47697,4,'sv-dm47697','007291791','06091504570018','DURAN RODRIGUEZ','MANUEL HERIBERTO','m','78804336','f');
insert into facturacion (idcliente,monto_facturacion) values (47697,176.2);
insert into cliente values (47669,4,'sv-ae47669','004536087','08113011611018','ALVARADO ALVAREZ','ESTANISLAO','m','79939305','t');
insert into facturacion (idcliente,monto_facturacion) values (47669,44.1);
insert into cliente values (47661,4,'sv-ap47661','034079691','06090612851027','AMAYA ORTEGA','PEDRO ALFONSO','m','73910697','t');
insert into facturacion (idcliente,monto_facturacion) values (47661,154);
insert into cliente values (26082,4,'sv-nj26082','004813112','07032503651011','NOLASCO LOPEZ','JOSE ANTONIO','m','77109443','t');
insert into facturacion (idcliente,monto_facturacion) values (26082,109.9);
insert into cliente values (47684,4,'sv-hm47684','044322193','06141203911305','HERNANDEZ CANTARELY','MILTON SAMUEL','m','75812813','f');
insert into facturacion (idcliente,monto_facturacion) values (47684,96.2);
insert into cliente values (23204,4,'sv-sh23204','037696573','06142707871033','SORIANO BONILLA','HECTOR ALEJANDRO','m','77953576','t');
insert into facturacion (idcliente,monto_facturacion) values (23204,102.6);
insert into cliente values (27200,4,'sv-ae27200','022220448','07110810661017','AREVALO ','ELMER ENRIQUE','m','78533506','t');
insert into facturacion (idcliente,monto_facturacion) values (27200,180.2);
insert into cliente values (22100,2,'sv-df22100','023777456','06141806480052','DIAZ RODRIGUEZ','FRANCISCO ENRIQUE','m','65236600','t');
insert into facturacion (idcliente,monto_facturacion) values (22100,155.2);
insert into cliente values (19455,2,'sv-ol19455','029212250','01032409661010','ORTIZ MEDINA','LUIS WALTER','m','62947980','t');
insert into facturacion (idcliente,monto_facturacion) values (19455,125.9);
insert into cliente values (20278,2,'sv-pr20278','003748004','08212202520012','PINEDA DIAZ','RAUL ALBERTO','m','62787729','t');
insert into facturacion (idcliente,monto_facturacion) values (20278,151.4);
insert into cliente values (25233,2,'sv-mj25233','024353378','06141612640130','MIRANDA QUINTANILLA','JORGE ALBERTO','m','62729067','f');
insert into facturacion (idcliente,monto_facturacion) values (25233,107.2);
insert into cliente values (19861,2,'sv-pj19861','027267568','02101709640072','PINEDA MULATO','JOSE MAURICIO','m','62321846','t');
insert into facturacion (idcliente,monto_facturacion) values (19861,184.9);
insert into cliente values (47519,2,'sv-gs47519','008298762','10100303620011','GUZMAN SAMAYOA','SARA LORENA','f','62846340','t');
insert into facturacion (idcliente,monto_facturacion) values (47519,192.1);
insert into cliente values (15868,2,'sv-bj15868','011671929','12172106580043','BENITEZ PARADA','JOSE ATILIO','m','62074477','t');
insert into facturacion (idcliente,monto_facturacion) values (15868,154.3);
insert into cliente values (47598,2,'sv-cr47598','025933113','06142008540032','CRUZ GUZMAN','ROSA MARGARITA','f','62437362','t');
insert into facturacion (idcliente,monto_facturacion) values (47598,181.7);
insert into cliente values (20831,2,'sv-rm20831','001962687','03151801650015','RAMIREZ MARTINEZ','MAURICIO ERNESTO','m','62610010','t');
insert into facturacion (idcliente,monto_facturacion) values (20831,24.6);
insert into cliente values (6418,2,'sv-lc6418','014216956','06140310620031','LOPEZ GUZMAN','CESAR MAURICIO','m','63055568','t');
insert into facturacion (idcliente,monto_facturacion) values (6418,43.3);
insert into cliente values (9278,2,'sv-nm9278','000900886','06142712600140','NUÑEZ GRANADOS','MANUEL VICENTE','m','61317133','f');
insert into facturacion (idcliente,monto_facturacion) values (9278,17.6);
insert into cliente values (9858,4,'sv-pw9858','001083386','06172101640020','PALACIOS COLOCHO','WALTER MAURICIO','m','62272957','t');
insert into facturacion (idcliente,monto_facturacion) values (9858,82.3);
insert into cliente values (47674,4,'sv-ar47674','027572002','01080712811010','AYALA SARMIENTO','REYNALDA EMILIA','f','65291430','t');
insert into facturacion (idcliente,monto_facturacion) values (47674,169.8);
insert into cliente values (1664,4,'sv-cm1664','015965532','02100911630058','CABRERA MARTINEZ','MARTA ALICIA','f','62805523','t');
insert into facturacion (idcliente,monto_facturacion) values (1664,101.4);
insert into cliente values (47631,4,'sv-cc47631','022169985','01122605741012','CASTRO AGUILAR','CARLOS ADALBERTO','m','65414440','t');
insert into facturacion (idcliente,monto_facturacion) values (47631,42.8);
insert into cliente values (16424,4,'sv-on16424','029324227','13072512641016','ORELLANA CHICA','NATIVIDAD CRISTINO','f','62061046','t');
insert into facturacion (idcliente,monto_facturacion) values (16424,60.9);
insert into cliente values (2158,4,'sv-ra2158','002873946','02102501671058','RODRIGUEZ DE TOVAR','ANA LIZ','f','64405701','f');
insert into facturacion (idcliente,monto_facturacion) values (2158,85.1);
insert into cliente values (5897,4,'sv-vs5897','001415614','06100911591010','VASQUEZ MELARA','SALVADOR','m','63335201','t');
insert into facturacion (idcliente,monto_facturacion) values (5897,167.2);
insert into cliente values (47659,4,'sv-jj47659','005574868','02032303831017','JIMENEZ PINTIN','JOSE RODOLFO','m','62634944','t');
insert into facturacion (idcliente,monto_facturacion) values (47659,26);
insert into cliente values (47652,4,'sv-le47652','017998303','06142103701059','LEMUS ESCALANTE','ERIC LOMBARDO','m','62849154','t');
insert into facturacion (idcliente,monto_facturacion) values (47652,116.4);
insert into cliente values (47660,4,'sv-gm47660','011299272','08051205721013','GRANDE CASTELLANOS','MANUEL ENRIQUE','m','62845726','f');
insert into facturacion (idcliente,monto_facturacion) values (47660,93.1);
insert into cliente values (47678,4,'sv-sr47678','005423740','02101501500022','SILIEZAR SALINAS','RICARDO ANTONIO','m','62930678','t');
insert into facturacion (idcliente,monto_facturacion) values (47678,30.6);
insert into cliente values (47685,3,'sv-mh47685','029491286','05110805851013','MARTINEZ ARGUETA','HIRBINJ NOE','m','62350594','t');
insert into facturacion (idcliente,monto_facturacion) values (47685,19.6);
insert into cliente values (47687,3,'sv-mo47687','021590515','06141810841120','MOREJON LOPEZ','OSMIN EDGARDO','m','62923539','t');
insert into facturacion (idcliente,monto_facturacion) values (47687,42.2);
insert into cliente values (47705,3,'sv-ns47705','001153995','06040906681017','NAVARRETE LEONOR','SIMEON','m','61242645','t');
insert into facturacion (idcliente,monto_facturacion) values (47705,99.5);
insert into cliente values (47686,3,'sv-ba47686','001194832','06142512590060','BENITEZ ARGUETA','ANA IRMA','f','62705458','t');
insert into facturacion (idcliente,monto_facturacion) values (47686,195.4);
insert into cliente values (3746,3,'sv-ac3746','019271511','04111206530015','ARDON GAVARRETE','CARLOS ALBERTO','m','62789958','f');
insert into facturacion (idcliente,monto_facturacion) values (3746,20);
insert into cliente values (47670,3,'sv-pc47670','010402432','07142305731026','PALACIOS DE GUARDADO','CRUZ MARINA','f','62039568','t');
insert into facturacion (idcliente,monto_facturacion) values (47670,97.3);
insert into cliente values (47692,3,'sv-cf47692','016033299','06141610450026','CASTILLO GRIJALVA','FABIO ANTONIO','m','62226303','t');
insert into facturacion (idcliente,monto_facturacion) values (47692,111.1);
insert into cliente values (47664,3,'sv-rc47664','005693719','06140203831321','ROSALES MACHADO','CARLOS RODOLFO','m','65666345','t');
insert into facturacion (idcliente,monto_facturacion) values (47664,183.8);
insert into cliente values (47689,3,'sv-co47689','024733007','10102906650011','CARRILLO TURCIOS','OSCAR MAURICIO','m','62888115','t');
insert into facturacion (idcliente,monto_facturacion) values (47689,163.9);
insert into cliente values (47700,3,'sv-mf47700','008891316','06140912580163','MIXCO LOPEZ','FRANCISCO REMBERTO','m','62763473','f');
insert into facturacion (idcliente,monto_facturacion) values (47700,77.6);
insert into cliente values (47681,3,'sv-oj47681','023747142','14160802600014','ORTEZ HERNANDEZ','JORGE ALBERTO','m','66694982','t');
insert into facturacion (idcliente,monto_facturacion) values (47681,55.4);
insert into cliente values (47691,1,'sv-ud47691','008095449','14030711551011','UMANZOR DE RIVERA','DOLORES SUYAPA','f','62257198','t');
insert into facturacion (idcliente,monto_facturacion) values (47691,184.4);
insert into cliente values (1054,1,'sv-sm1054','024082919','02030510681014','SALAZAR DE SERMEÑO','MARITZA CAROLINA','f','64478435','t');
insert into facturacion (idcliente,monto_facturacion) values (1054,166.8);
insert into cliente values (47682,1,'sv-om47682','003565392','12172412781040','OLIVARES RUIZ','MARGARITA DE LA PAZ','f','66606154','t');
insert into facturacion (idcliente,monto_facturacion) values (47682,130);
insert into cliente values (47663,1,'sv-fr47663','010757691','06142405600136','FONG HERNANDEZ','ROBERTO ENRIQUE','m','62823380','f');
insert into facturacion (idcliente,monto_facturacion) values (47663,80.9);
insert into cliente values (47695,1,'sv-qa47695','006196100','06142903580100','QUINTANILLA DE ZULETA','ANA DORA ALICIA','f','62716439','t');
insert into facturacion (idcliente,monto_facturacion) values (47695,167.1);
insert into cliente values (23670,1,'sv-mh23670','023137509','11142601701015','MARTINEZ ORTIZ','HECTOR ANTONIO','m','66311175','t');
insert into facturacion (idcliente,monto_facturacion) values (23670,20.9);
insert into cliente values (47693,1,'sv-mm47693','003104594','07022402530010','MEJIA ','MANUEL ANTONIO','m','62357596','f');
insert into facturacion (idcliente,monto_facturacion) values (47693,144.9);
GO