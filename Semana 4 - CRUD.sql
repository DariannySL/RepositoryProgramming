Create database BDPersona
Go
Use BDPersona
Go
Create table Paises(
IdPais int constraint PK_IdPais primary key,
CodigoPais varchar(10),
NombrePais varchar(40))
Go
Create table Sexo(
IdSexo int constraint PK_IdSexo primary key identity(1, 1),
NombreSexo varchar(15))
Go
Create table Persona(
IdPersona int constraint PK_IdPers primary key identity(1, 1),
Nombre varchar(40) not null,
Apellido varchar(50) not null,
FechaNacimiento date not null,
Telefono varchar(13), 
Email varchar(50),
IdSexo int constraint FK_Sexo foreign key(IdSexo) references Sexo(IdSexo) not null,
IdPais int constraint FK_Pais foreign key(IdPais) references Paises(IdPais) not null,
Foto varchar(200),
Eliminado bit default 0)
Go
INSERT INTO Sexo (NombreSexo) VALUES ('Femenino'),
									 ('Masculino')
Go
INSERT INTO Paises VALUES(1, 'AF', 'Afganist�n');
INSERT INTO Paises VALUES(2, 'AX', 'Islas Gland');
INSERT INTO Paises  VALUES(3, 'AL', 'Albania');
INSERT INTO Paises  VALUES(4, 'DE', 'Alemania');
INSERT INTO Paises  VALUES(5, 'AD', 'Andorra');
INSERT INTO Paises  VALUES(6, 'AO', 'Angola');
INSERT INTO Paises  VALUES(7, 'AI', 'Anguilla');
INSERT INTO Paises  VALUES(8, 'AQ', 'Ant�rtida');
INSERT INTO Paises  VALUES(9, 'AG', 'Antigua y Barbuda');
INSERT INTO Paises  VALUES(10, 'AN', 'Antillas Holandesas');
INSERT INTO Paises  VALUES(11, 'SA', 'Arabia Saud�');
INSERT INTO Paises  VALUES(12, 'DZ', 'Argelia');
INSERT INTO Paises  VALUES(13, 'AR', 'Argentina');
INSERT INTO Paises  VALUES(14, 'AM', 'Armenia');
INSERT INTO Paises  VALUES(15, 'AW', 'Aruba');
INSERT INTO Paises  VALUES(16, 'AU', 'Australia');
INSERT INTO Paises  VALUES(17, 'AT', 'Austria');
INSERT INTO Paises  VALUES(18, 'AZ', 'Azerbaiy�n');
INSERT INTO Paises  VALUES(19, 'BS', 'Bahamas');
INSERT INTO Paises  VALUES(20, 'BH', 'Bahr�in');
INSERT INTO Paises  VALUES(21, 'BD', 'Bangladesh');
INSERT INTO Paises  VALUES(22, 'BB', 'Barbados');
INSERT INTO Paises  VALUES(23, 'BY', 'Bielorrusia');
INSERT INTO Paises  VALUES(24, 'BE', 'B�lgica');
INSERT INTO Paises  VALUES(25, 'BZ', 'Belice');
INSERT INTO Paises  VALUES(26, 'BJ', 'Benin');
INSERT INTO Paises  VALUES(27, 'BM', 'Bermudas');
INSERT INTO Paises  VALUES(28, 'BT', 'Bhut�n');
INSERT INTO Paises  VALUES(29, 'BO', 'Bolivia');
INSERT INTO Paises  VALUES(30, 'BA', 'Bosnia y Herzegovina');
INSERT INTO Paises  VALUES(31, 'BW', 'Botsuana');
INSERT INTO Paises  VALUES(32, 'BV', 'Isla Bouvet');
INSERT INTO Paises  VALUES(33, 'BR', 'Brasil');
INSERT INTO Paises  VALUES(34, 'BN', 'Brun�i');
INSERT INTO Paises  VALUES(35, 'BG', 'Bulgaria');
INSERT INTO Paises  VALUES(36, 'BF', 'Burkina Faso');
INSERT INTO Paises  VALUES(37, 'BI', 'Burundi');
INSERT INTO Paises  VALUES(38, 'CV', 'Cabo Verde');
INSERT INTO Paises  VALUES(39, 'KY', 'Islas Caim�n');
INSERT INTO Paises  VALUES(40, 'KH', 'Camboya');
INSERT INTO Paises  VALUES(41, 'CM', 'Camer�n');
INSERT INTO Paises  VALUES(42, 'CA', 'Canad�');
INSERT INTO Paises  VALUES(43, 'CF', 'Rep�blica Centroafricana');
INSERT INTO Paises  VALUES(44, 'TD', 'Chad');
INSERT INTO Paises  VALUES(45, 'CZ', 'Rep�blica Checa');
INSERT INTO Paises  VALUES(46, 'CL', 'Chile');
INSERT INTO Paises  VALUES(47, 'CN', 'China');
INSERT INTO Paises  VALUES(48, 'CY', 'Chipre');
INSERT INTO Paises  VALUES(49, 'CX', 'Isla de Navidad');
INSERT INTO Paises  VALUES(50, 'VA', 'Ciudad del Vaticano');
INSERT INTO Paises  VALUES(51, 'CC', 'Islas Cocos');
INSERT INTO Paises  VALUES(52, 'CO', 'Colombia');
INSERT INTO Paises  VALUES(53, 'KM', 'Comoras');
INSERT INTO Paises  VALUES(54, 'CD', 'Rep�blica Democr�tica del Congo');
INSERT INTO Paises  VALUES(55, 'CG', 'Congo');
INSERT INTO Paises  VALUES(56, 'CK', 'Islas Cook');
INSERT INTO Paises  VALUES(57, 'KP', 'Corea del Norte');
INSERT INTO Paises  VALUES(58, 'KR', 'Corea del Sur');
INSERT INTO Paises  VALUES(59, 'CI', 'Costa de Marfil');
INSERT INTO Paises  VALUES(60, 'CR', 'Costa Rica');
INSERT INTO Paises  VALUES(61, 'HR', 'Croacia');
INSERT INTO Paises  VALUES(62, 'CU', 'Cuba');
INSERT INTO Paises  VALUES(63, 'DK', 'Dinamarca');
INSERT INTO Paises  VALUES(64, 'DM', 'Dominica');
INSERT INTO Paises  VALUES(65, 'DO', 'Rep�blica Dominicana');
INSERT INTO Paises  VALUES(66, 'EC', 'Ecuador');
INSERT INTO Paises  VALUES(67, 'EG', 'Egipto');
INSERT INTO Paises  VALUES(68, 'SV', 'El Salvador');
INSERT INTO Paises  VALUES(69, 'AE', 'Emiratos �rabes Unidos');
INSERT INTO Paises  VALUES(70, 'ER', 'Eritrea');
INSERT INTO Paises  VALUES(71, 'SK', 'Eslovaquia');
INSERT INTO Paises  VALUES(72, 'SI', 'Eslovenia');
INSERT INTO Paises  VALUES(73, 'ES', 'Espa�a');
INSERT INTO Paises  VALUES(74, 'UM', 'Islas ultramarinas de Estados Unidos');
INSERT INTO Paises  VALUES(75, 'US', 'Estados Unidos');
INSERT INTO Paises  VALUES(76, 'EE', 'Estonia');
INSERT INTO Paises  VALUES(77, 'ET', 'Etiop�a');
INSERT INTO Paises  VALUES(78, 'FO', 'Islas Feroe');
INSERT INTO Paises  VALUES(79, 'PH', 'Filipinas');
INSERT INTO Paises  VALUES(80, 'FI', 'Finlandia');
INSERT INTO Paises  VALUES(81, 'FJ', 'Fiyi');
INSERT INTO Paises  VALUES(82, 'FR', 'Francia');
INSERT INTO Paises  VALUES(83, 'GA', 'Gab�n');
INSERT INTO Paises  VALUES(84, 'GM', 'Gambia');
INSERT INTO Paises  VALUES(85, 'GE', 'Georgia');
INSERT INTO Paises  VALUES(86, 'GS', 'Islas Georgias del Sur y Sandwich del Sur');
INSERT INTO Paises  VALUES(87, 'GH', 'Ghana');
INSERT INTO Paises  VALUES(88, 'GI', 'Gibraltar');
INSERT INTO Paises  VALUES(89, 'GD', 'Granada');
INSERT INTO Paises  VALUES(90, 'GR', 'Grecia');
INSERT INTO Paises  VALUES(91, 'GL', 'Groenlandia');
INSERT INTO Paises  VALUES(92, 'GP', 'Guadalupe');
INSERT INTO Paises  VALUES(93, 'GU', 'Guam');
INSERT INTO Paises  VALUES(94, 'GT', 'Guatemala');
INSERT INTO Paises  VALUES(95, 'GF', 'Guayana Francesa');
INSERT INTO Paises  VALUES(96, 'GN', 'Guinea');
INSERT INTO Paises  VALUES(97, 'GQ', 'Guinea Ecuatorial');
INSERT INTO Paises  VALUES(98, 'GW', 'Guinea-Bissau');
INSERT INTO Paises  VALUES(99, 'GY', 'Guyana');
INSERT INTO Paises  VALUES(100, 'HT', 'Hait�');
INSERT INTO Paises  VALUES(101, 'HM', 'Islas Heard y McDonald');
INSERT INTO Paises  VALUES(102, 'HN', 'Honduras');
INSERT INTO Paises  VALUES(103, 'HK', 'Hong Kong');
INSERT INTO Paises  VALUES(104, 'HU', 'Hungr�a');
INSERT INTO Paises  VALUES(105, 'IN', 'India');
INSERT INTO Paises  VALUES(106, 'ID', 'Indonesia');
INSERT INTO Paises  VALUES(107, 'IR', 'Ir�n');
INSERT INTO Paises  VALUES(108, 'IQ', 'Iraq');
INSERT INTO Paises  VALUES(109, 'IE', 'Irlanda');
INSERT INTO Paises  VALUES(110, 'IS', 'Islandia');
INSERT INTO Paises  VALUES(111, 'IL', 'Israel');
INSERT INTO Paises  VALUES(112, 'IT', 'Italia');
INSERT INTO Paises  VALUES(113, 'JM', 'Jamaica');
INSERT INTO Paises  VALUES(114, 'JP', 'Jap�n');
INSERT INTO Paises  VALUES(115, 'JO', 'Jordania');
INSERT INTO Paises  VALUES(116, 'KZ', 'Kazajst�n');
INSERT INTO Paises  VALUES(117, 'KE', 'Kenia');
INSERT INTO Paises  VALUES(118, 'KG', 'Kirguist�n');
INSERT INTO Paises  VALUES(119, 'KI', 'Kiribati');
INSERT INTO Paises  VALUES(120, 'KW', 'Kuwait');
INSERT INTO Paises  VALUES(121, 'LA', 'Laos');
INSERT INTO Paises  VALUES(122, 'LS', 'Lesotho');
INSERT INTO Paises  VALUES(123, 'LV', 'Letonia');
INSERT INTO Paises  VALUES(124, 'LB', 'L�bano');
INSERT INTO Paises  VALUES(125, 'LR', 'Liberia');
INSERT INTO Paises  VALUES(126, 'LY', 'Libia');
INSERT INTO Paises  VALUES(127, 'LI', 'Liechtenstein');
INSERT INTO Paises  VALUES(128, 'LT', 'Lituania');
INSERT INTO Paises  VALUES(129, 'LU', 'Luxemburgo');
INSERT INTO Paises  VALUES(130, 'MO', 'Macao');
INSERT INTO Paises  VALUES(131, 'MK', 'ARY Macedonia');
INSERT INTO Paises  VALUES(132, 'MG', 'Madagascar');
INSERT INTO Paises  VALUES(133, 'MY', 'Malasia');
INSERT INTO Paises  VALUES(134, 'MW', 'Malawi');
INSERT INTO Paises  VALUES(135, 'MV', 'Maldivas');
INSERT INTO Paises  VALUES(136, 'ML', 'Mal�');
INSERT INTO Paises  VALUES(137, 'MT', 'Malta');
INSERT INTO Paises  VALUES(138, 'FK', 'Islas Malvinas');
INSERT INTO Paises  VALUES(139, 'MP', 'Islas Marianas del Norte');
INSERT INTO Paises  VALUES(140, 'MA', 'Marruecos');
INSERT INTO Paises  VALUES(141, 'MH', 'Islas Marshall');
INSERT INTO Paises  VALUES(142, 'MQ', 'Martinica');
INSERT INTO Paises  VALUES(143, 'MU', 'Mauricio');
INSERT INTO Paises  VALUES(144, 'MR', 'Mauritania');
INSERT INTO Paises  VALUES(145, 'YT', 'Mayotte');
INSERT INTO Paises  VALUES(146, 'MX', 'M�xico');
INSERT INTO Paises  VALUES(147, 'FM', 'Micronesia');
INSERT INTO Paises  VALUES(148, 'MD', 'Moldavia');
INSERT INTO Paises  VALUES(149, 'MC', 'M�naco');
INSERT INTO Paises  VALUES(150, 'MN', 'Mongolia');
INSERT INTO Paises  VALUES(151, 'MS', 'Montserrat');
INSERT INTO Paises  VALUES(152, 'MZ', 'Mozambique');
INSERT INTO Paises  VALUES(153, 'MM', 'Myanmar');
INSERT INTO Paises  VALUES(154, 'NA', 'Namibia');
INSERT INTO Paises  VALUES(155, 'NR', 'Nauru');
INSERT INTO Paises  VALUES(156, 'NP', 'Nepal');
INSERT INTO Paises  VALUES(157, 'NI', 'Nicaragua');
INSERT INTO Paises  VALUES(158, 'NE', 'N�ger');
INSERT INTO Paises  VALUES(159, 'NG', 'Nigeria');
INSERT INTO Paises  VALUES(160, 'NU', 'Niue');
INSERT INTO Paises  VALUES(161, 'NF', 'Isla Norfolk');
INSERT INTO Paises  VALUES(162, 'NO', 'Noruega');
INSERT INTO Paises  VALUES(163, 'NC', 'Nueva Caledonia');
INSERT INTO Paises  VALUES(164, 'NZ', 'Nueva Zelanda');
INSERT INTO Paises  VALUES(165, 'OM', 'Om�n');
INSERT INTO Paises  VALUES(166, 'NL', 'Pa�ses Bajos');
INSERT INTO Paises  VALUES(167, 'PK', 'Pakist�n');
INSERT INTO Paises  VALUES(168, 'PW', 'Palau');
INSERT INTO Paises  VALUES(169, 'PS', 'Palestina');
INSERT INTO Paises  VALUES(170, 'PA', 'Panam�');
INSERT INTO Paises  VALUES(171, 'PG', 'Pap�a Nueva Guinea');
INSERT INTO Paises  VALUES(172, 'PY', 'Paraguay');
INSERT INTO Paises  VALUES(173, 'PE', 'Per�');
INSERT INTO Paises  VALUES(174, 'PN', 'Islas Pitcairn');
INSERT INTO Paises  VALUES(175, 'PF', 'Polinesia Francesa');
INSERT INTO Paises  VALUES(176, 'PL', 'Polonia');
INSERT INTO Paises  VALUES(177, 'PT', 'Portugal');
INSERT INTO Paises  VALUES(178, 'PR', 'Puerto Rico');
INSERT INTO Paises  VALUES(179, 'QA', 'Qatar');
INSERT INTO Paises  VALUES(180, 'GB', 'Reino Unido');
INSERT INTO Paises  VALUES(181, 'RE', 'Reuni�n');
INSERT INTO Paises  VALUES(182, 'RW', 'Ruanda');
INSERT INTO Paises  VALUES(183, 'RO', 'Rumania');
INSERT INTO Paises  VALUES(184, 'RU', 'Rusia');
INSERT INTO Paises  VALUES(185, 'EH', 'Sahara Occidental');
INSERT INTO Paises  VALUES(186, 'SB', 'Islas Salom�n');
INSERT INTO Paises  VALUES(187, 'WS', 'Samoa');
INSERT INTO Paises  VALUES(188, 'AS', 'Samoa Americana');
INSERT INTO Paises  VALUES(189, 'KN', 'San Crist�bal y Nevis');
INSERT INTO Paises  VALUES(190, 'SM', 'San Marino');
INSERT INTO Paises  VALUES(191, 'PM', 'San Pedro y Miquel�n');
INSERT INTO Paises  VALUES(192, 'VC', 'San Vicente y las Granadinas');
INSERT INTO Paises  VALUES(193, 'SH', 'Santa Helena');
INSERT INTO Paises  VALUES(194, 'LC', 'Santa Luc�a');
INSERT INTO Paises  VALUES(195, 'ST', 'Santo Tom� y Pr�ncipe');
INSERT INTO Paises  VALUES(196, 'SN', 'Senegal');
INSERT INTO Paises  VALUES(197, 'CS', 'Serbia y Montenegro');
INSERT INTO Paises  VALUES(198, 'SC', 'Seychelles');
INSERT INTO Paises  VALUES(199, 'SL', 'Sierra Leona');
INSERT INTO Paises  VALUES(200, 'SG', 'Singapur');
INSERT INTO Paises  VALUES(201, 'SY', 'Siria');
INSERT INTO Paises  VALUES(202, 'SO', 'Somalia');
INSERT INTO Paises  VALUES(203, 'LK', 'Sri Lanka');
INSERT INTO Paises  VALUES(204, 'SZ', 'Suazilandia');
INSERT INTO Paises  VALUES(205, 'ZA', 'Sud�frica');
INSERT INTO Paises  VALUES(206, 'SD', 'Sud�n');
INSERT INTO Paises  VALUES(207, 'SE', 'Suecia');
INSERT INTO Paises  VALUES(208, 'CH', 'Suiza');
INSERT INTO Paises  VALUES(209, 'SR', 'Surinam');
INSERT INTO Paises  VALUES(210, 'SJ', 'Svalbard y Jan Mayen');
INSERT INTO Paises  VALUES(211, 'TH', 'Tailandia');
INSERT INTO Paises  VALUES(212, 'TW', 'Taiw�n');
INSERT INTO Paises  VALUES(213, 'TZ', 'Tanzania');
INSERT INTO Paises  VALUES(214, 'TJ', 'Tayikist�n');
INSERT INTO Paises  VALUES(215, 'IO', 'Territorio Brit�nico del Oc�ano �ndico');
INSERT INTO Paises  VALUES(216, 'TF', 'Territorios Australes Franceses');
INSERT INTO Paises  VALUES(217, 'TL', 'Timor Oriental');
INSERT INTO Paises  VALUES(218, 'TG', 'Togo');
INSERT INTO Paises  VALUES(219, 'TK', 'Tokelau');
INSERT INTO Paises  VALUES(220, 'TO', 'Tonga');
INSERT INTO Paises  VALUES(221, 'TT', 'Trinidad y Tobago');
INSERT INTO Paises  VALUES(222, 'TN', 'T�nez');
INSERT INTO Paises  VALUES(223, 'TC', 'Islas Turcas y Caicos');
INSERT INTO Paises  VALUES(224, 'TM', 'Turkmenist�n');
INSERT INTO Paises  VALUES(225, 'TR', 'Turqu�a');
INSERT INTO Paises  VALUES(226, 'TV', 'Tuvalu');
INSERT INTO Paises  VALUES(227, 'UA', 'Ucrania');
INSERT INTO Paises  VALUES(228, 'UG', 'Uganda');
INSERT INTO Paises  VALUES(229, 'UY', 'Uruguay');
INSERT INTO Paises  VALUES(230, 'UZ', 'Uzbekist�n');
INSERT INTO Paises  VALUES(231, 'VU', 'Vanuatu');
INSERT INTO Paises  VALUES(232, 'VE', 'Venezuela');
INSERT INTO Paises  VALUES(233, 'VN', 'Vietnam');
INSERT INTO Paises  VALUES(234, 'VG', 'Islas V�rgenes Brit�nicas');
INSERT INTO Paises  VALUES(235, 'VI', 'Islas V�rgenes de los Estados Unidos');
INSERT INTO Paises  VALUES(236, 'WF', 'Wallis y Futuna');
INSERT INTO Paises  VALUES(237, 'YE', 'Yemen');
INSERT INTO Paises  VALUES(238, 'DJ', 'Yibuti');
INSERT INTO Paises  VALUES(239, 'ZM', 'Zambia');
INSERT INTO Paises  VALUES(240, 'ZW', 'Zimbabue');
GO
