
use win10assetdata
go

select a.Allocated_User, a.Allocated_UID, c.Mail as AllocatedUserEmail
, a.Most_Frequent_User, a.Most_Frequent_UID, d.Mail as MostFrequentUserEmail
, a.last_user_name, a.last_user_ID, e.Mail as LastUserEmail
, a.Directorate, a.Division, a.Section
, a.Location, b.[Post Code]
, a.IsItOK
, f.Outcome
, a.FullYearsOld
, a.Asset_tag
, a.model_category
from hardware_readiness_B a left outer join locationDetails b on (a.Location = b.Name)
left outer join allocated_Email c on (a.Allocated_UID = c.[User Name])
left outer join frequent_Email d on (a.Most_Frequent_UID = d.[User Name])
left outer join last_Email e on (a.last_user_id = e.[User Name])
left outer join outcomes f on (a.IsItOK = f.IsItOK)
where a.Asset_tag in ('SB0066920', 'SB0065573', 'SB0066924', 'SB0065599', 'SB0048966', 'SB0048876', 'SB0068345', 'SB0048849', 'SB0068951', 'SB0065596', 'SB0069278', 'SB0048829', 'SB0073726', 'SB0065841', 'SB0061077', 'SB0063084', 'SB0074157', 'SB0074398', 'SB0090299', 'SB0076092', 'SB0074397', 'SB0076126', 'SB0090004', 'SB0090305', 'SB0090470', 'SB0090311', 'SB0074640', 'SB0090314', 'SB0074888', 'SB0090326', 'SB0090085', 'SB0076229', 'SB0090128', 'SB0074352', 'SB0090251', 'SB0076759', 'SB0090266', 'SB0076257', 'SB0074445', 'SB0074754', 'SB0076082', 'SB0076311', 'SB0076619', 'SB0090373', 'SB0074238', 'SB0090374', 'SB0076542', 'SB0090378', 'SB0090078', 'SB0076820', 'SB0090131', 'SB0090383', 'SB0090267', 'SB0076826', 'SB0090291', 'SB0076312', 'SB0090016', 'SB0090417', 'SB0076595', 'SB0090419', 'SB0074275', 'SB0090420', 'SB0090071', 'SB0074619', 'SB0076888', 'SB0090461', 'SB0074648', 'SB0090463', 'SB0090525', 'SB0091954', 'SB0091670', 'SB0090482', 'SB0091671', 'SB0091645', 'SB0110818', 'SB0110157', 'SB0110160', 'SB0091632', 'SB0110292', 'SB0091922', 'SB0091648', 'SB0091638', 'SB0111156', 'SB0110857', 'SB0111159', 'SB0110861', 'SB0111161', 'SB0110864', 'SB0111164', 'SB0110888', 'SB0111165', 'SB0110892', 'SB0111166', 'SB0110895', 'SB0091654', 'SB0110912', 'SB0111170', 'SB0091023', 'SB0111171', 'SB0110935', 'SB0111181', 'SB0091673', 'SB0111182', 'SB0091669', 'SB0111183', 'SB0090572', 'SB0090538', 'SB0090497', 'SB0111186', 'SB0091930', 'SB0111187', 'SB0110893', 'SB0090473', 'SB0091938', 'SB0091590', 'SB0110758', 'SB0111190', 'SB0091903', 'SB0090542', 'SB0091929', 'SB0091593', 'SB0091931', 'SB0091594', 'SB0090560', 'SB0090545', 'SB0110889', 'SB0111222', 'SB0090536', 'SB0111224', 'SB0091026', 'SB0110449', 'SB0033688', 'SB0031177', 'SB0031908', 'SB0031924', 'SB0033759', 'SB0031723', 'SB0031662', 'SB0033678', 'SB0033558', 'SB0031003', 'SB0033781', 'SB0033220', 'SB0033782', 'SB0033696', 'SB0033587', 'SB0031763', 'SB0033593', 'SB0033723', 'SB0033791', 'SB0031582', 'SB0033596', 'SB0033733', 'SB0031665', 'SB0033741', 'SB0009544', 'SB0033659', 'SB0005971', 'SB0031958', 'SB0031669', 'SB0033695', 'SB0033816', 'SB0031907', 'SB0033820', 'SB0031127', 'SB0033823', 'SB0031915', 'SB0033825', 'Sb0009568', 'SB0009658', 'SB0033725', 'SB0033830', 'SB0033676', 'SB0031913', 'SB0031174', 'SB0033649', 'SB0033712', 'SB0033835', 'SB0048508', 'SB0033861', 'SB0048624', 'SB0048489', 'SB0048632', 'SB0048492', 'SB0048356', 'SB0048506', 'SB0048639', 'SB0048518', 'SB0048666', 'SB0048525', 'SB0048415', 'SB0033854', 'SB0048677', 'SB0033855', 'SB0033846', 'SB0033885', 'SB0048458', 'SB0033857', 'SB0048701', 'SB0048584', 'SB0033847', 'SB0048603', 'SB0048468', 'SB0048809', 'SB0048720', 'SB0048505', 'SB0033984', 'SB0048519', 'SB0048747', 'SB0048028', 'SB0048753', 'SB0033845', 'SB0033850', 'SB0033858', 'SB0048758', 'SB0033872', 'SB0048484', 'SB0046910', 'SB0048784', 'SB0048313', 'SB0048785', 'SB0048507', 'SB0048789', 'SB0048605', 'SB0048486', 'SB0048214', 'SB0048798', 'SB0066240', 'SB0048832', 'SB0065643', 'SB0061256', 'SB0061286', 'SB0065721', 'SB0066793', 'SB0048826', 'SB0063129', 'SB0048867', 'SB0066886', 'SB0048887', 'SB0048859', 'SB0048830', 'SB0048949', 'SB0062646', 'SB0066930', 'SB0048908', 'SB0048968', 'SB0048927', 'SB0067973', 'SB0066582', 'SB0069001', 'SB0065698', 'SB0061476', 'SB0048866', 'SB0069428', 'SB0048888', 'SB0069619', 'SB0066431', 'SB0048974', 'SB0066580', 'SB0048975', 'SB0065723', 'SB0061076', 'SB0061298', 'SB0061206', 'SB0066710', 'SB0074138', 'SB0048831', 'SB0074156', 'SB0065912', 'SB0065600', 'SB0090033', 'SB0074767', 'SB0076298', 'SB0076771', 'SB0090296', 'SB0090098', 'SB0076074', 'SB0090124', 'SB0076319', 'SB0076538', 'SB0090306', 'SB0090381', 'SB0076423', 'SB0076792', 'SB0090327', 'SB0090384', 'SB0090066', 'SB0090388', 'SB0090335', 'SB0090389', 'SB0076743', 'SB0090193', 'SB0090077', 'SB0090240', 'SB0074646', 'SB0074785', 'SB0079457', 'SB0076137', 'SB0076383', 'SB0076188', 'SB0090065', 'SB0090421', 'SB0090331', 'SB0074257', 'SB0076756', 'SB0090447', 'SB0074291', 'SB0090453', 'SB0090048', 'SB0090460', 'SB0090336', 'SB0090277', 'SB0076077', 'SB0076598', 'SB0090351', 'SB0090465', 'SB0090328', 'SB0076046', 'SB0091647', 'SB0110341', 'SB0091021', 'SB0111169', 'SB0090570', 'SB0090476', 'SB0091262', 'SB0110834', 'SB0111199', 'SB0090786', 'SB0111158', 'SB0091933', 'SB0110446', 'SB0090520', 'SB0090509', 'SB0090535', 'SB0110916', 'SB0110836', 'SB0111163', 'SB0090472', 'SB0091902', 'SB0110417', 'SB0090479', 'SB0091622', 'SB0091951', 'SB0091438', 'SB0090517', 'SB0033682', 'SB0009709', 'SB0033739', 'SB0033289', 'SB0009585', 'SB0031726', 'SB0033761', 'SB0031110', 'SB0033763', 'SB0031754', 'SB0031212', 'SB0033692', 'SB0012582', 'SB0009363', 'SB0033566', 'SB0031193', 'SB0031221', 'SB0033737', 'SB0033810', 'SB0009579', 'SB0033813', 'SB0031925', 'SB0009626', 'SB0033693', 'SB0031077', 'SB0033514', 'SB0033824', 'SB0033365', 'SB0031919', 'SB0033463', 'SB0009630', 'SB0033685', 'SB0033833', 'SB0033653', 'SB0031922', 'SB0048346', 'SB0033853', 'SB0048515', 'SB0048509', 'SB0048516', 'SB0048636', 'SB0033996', 'SB0048638', 'SB0048742', 'SB0033864', 'SB0048745', 'SB0048552', 'SB0048746', 'SB0048672', 'SB0048315', 'SB0033866', 'SB0048480', 'SB0046899', 'SB0048547', 'SB0048456', 'SB0048755', 'SB0048459', 'SB0048317', 'SB0048580', 'SB0048331', 'SB0048704', 'SB0048771', 'SB0048466', 'SB0048780', 'SB0048487', 'SB0048616', 'SB0033874', 'SB0048782', 'SB0048671', 'SB0048783', 'SB0046825', 'SB0048620', 'SB0033852', 'SB0048334', 'SB0048526', 'SB0048622', 'SB0048631', 'SB0033871', 'SB0048661', 'SB0048791', 'SB0048682', 'SB0048336', 'SB0048465', 'SB0048810', 'SB0033876', 'SB0048801', 'SB0048550', 'SB0048806', 'SB0048462', 'SB0033862', 'SB0065601', 'SB0048972', 'SB0048835', 'SB0065717', 'SB0063132', 'SB0048886', 'SB0066921', 'SB0066708', 'SB0048872', 'SB0069942', 'SB0066931', 'SB0065672', 'SB0065878', 'SB0048868', 'SB0048970', 'SB0061007', 'SB0048855', 'SB0048861', 'SB0061302', 'SB0065838', 'SB0066463', 'SB0048854', 'SB0048874', 'SB0048906', 'SB0065875', 'SB0066802', 'SB0065592', 'SB0061396', 'SB0048907', 'SB0066865', 'SB0048971', 'SB0062023', 'SB0090039', 'SB0076956', 'SB0076736', 'SB0080268', 'SB0076765', 'SB0074254', 'SB0074774', 'SB0076318', 'SB0076783', 'SB0090369', 'SB0090275', 'SB0076616', 'SB0074256', 'SB0090375', 'SB0074781', 'SB0074527', 'SB0090300', 'SB0090382', 'SB0076884', 'SB0076321', 'SB0076749', 'SB0090049', 'SB0076772', 'SB0090061', 'SB0076806', 'SB0090418', 'SB0076870', 'SB0090067', 'SB0074268', 'SB0090431', 'SB0076523', 'SB0090068', 'SB0076879', 'SB0090446', 'SB0076223', 'SB0076355', 'SB0090130', 'SB0090464', 'SB0110304', 'SB0090531', 'SB0110379', 'SB0110781', 'SB0090524', 'SB0090569', 'SB0110819', 'SB0090551', 'SB0090530', 'SB0091428', 'SB0090495', 'SB0091935', 'SB0090484', 'SB0090553', 'SB0091599', 'SB0090559', 'SB0090522', 'SB0091944', 'SB0090518', 'SB0090534', 'SB0033740', 'SB0031196', 'SB0033814', 'SB0033720', 'SB0033591', 'SB0031523', 'SB0033592', 'SB0033427', 'SB0033818', 'SB0033689', 'SB0033429', 'SB0033811', 'SB0033691', 'SB0033719', 'SB0031097', 'SB0033789', 'SB0033657', 'SB0031524', 'SB0033677', 'SB0009910', 'SB0033687', 'SB0033590', 'SB0033556', 'SB0031725', 'SB0033711', 'SB0048517', 'SB0048333', 'SB0048600', 'SB0048667', 'SB0048488', 'SB0048475', 'SB0048606', 'SB0048680', 'SB0048608', 'SB0033841', 'SB0033867', 'SB0048582', 'SB0048754', 'SB0048474', 'SB0033942', 'SB0048681', 'SB0033842', 'SB0048653', 'SB0048015', 'SB0048703', 'SB0033843', 'SB0033840', 'SB0033848', 'SB0066776', 'SB0066895', 'SB0068743', 'SB0066671', 'SB0065944', 'SB0065837', 'SB0061431', 'SB0048863', 'SB0065727', 'SB0066292', 'SB0065753', 'SB0065703', 'SB0069617', 'SB0062136', 'SB0068813', 'SB0065872', 'SB0062297', 'SB0048967', 'SB0069586', 'SB0048870', 'SB0063091', 'SB0048936', 'SB0061400', 'SB0068250', 'SB0065971', 'SB0061418', 'SB0090322', 'SB0090141', 'SB0076399', 'SB0076887', 'SB0090053', 'SB0090321', 'SB0090129', 'SB0076979', 'SB0074309', 'SB0090074', 'SB0076874', 'SB0076891', 'SB0076876', 'SB0090188', 'SB0090073', 'SB0090257', 'SB0090462', 'SB0090514', 'SB0090575', 'SB0111198', 'SB0090532', 'SB0090555', 'SB0090523', 'SB0110309', 'SB0090486', 'SB0091955', 'SB0091582', 'SB0090477', 'SB0090512', 'SB0110824', 'SB0110239', 'SB0090550', 'SB0110578', 'SB0012607', 'SB0033758', 'SB0031195', 'SB0033795', 'SB0033680', 'SB0033743', 'SB0031967', 'SB0033746', 'SB0033767', 'SB0033443', 'SB0031326', 'SB0031293', 'SB0033561', 'SB0033728', 'SB0000991', 'SB0033924', 'SB0048618', 'SB0048659', 'SB0033936', 'SB0048531', 'SB0033990', 'SB0048453', 'SB0048691', 'SB0048706', 'SB0048749', 'SB0033954', 'SB0046810', 'SB0048633', 'SB0048655', 'SB0048467', 'SB0048491', 'SB0033961', 'SB0033939', 'SB0048803', 'SB0048656', 'SB0048804', 'SB0048470', 'SB0033863', 'SB0045889', 'SB0048668', 'SB0065611', 'SB0065719', 'SB0066341', 'SB0048928', 'SB0048973', 'SB0062372', 'SB0066366', 'SB0048934', 'SB0073813', 'SB0069416', 'SB0048948', 'SB0067575', 'SB0048847', 'SB0069003', 'SB0074164', 'SB0048857', 'SB0065800', 'SB0061295', 'SB0065885', 'SB0074516', 'SB0076624', 'SB0090017', 'SB0074791', 'SB0090316', 'SB0074617', 'SB0090046', 'SB0090422', 'SB0090127', 'SB0090112', 'SB0090231', 'SB0090113', 'SB0074421', 'SB0090115', 'SB0090380', 'SB0090134', 'SB0076750', 'SB0074437', 'SB0076886', 'SB0090013', 'SB0090076', 'SB0076262', 'SB0076940', 'SB0090372', 'SB0091243', 'SB0110236', 'SB0110891', 'SB0033731', 'SB0033225', 'SB0033564', 'SB0033817', 'SB0033679', 'SB0033783', 'SB0033735', 'SB0033794', 'SB0033694', 'SB0033742', 'SB0033821', 'SB0048741', 'SB0048787', 'SB0048581', 'SB0048788', 'SB0048479', 'SB0048786', 'SB0048660', 'SB0048619', 'SB0048675', 'SB0048719', 'SB0048698', 'SB0033839', 'SB0048743', 'SB0048481', 'SB0048802', 'SB0048813', 'SB0048700', 'SB0048669', 'SB0033875', 'SB0048869', 'SB0048827', 'SB0062256', 'SB0048828', 'SB0048850', 'SB0066768', 'SB0068451', 'SB0048821', 'SB0069521', 'SB0048909', 'SB0065927', 'SB0065802', 'SB0090279', 'SB0080273', 'SB0090116', 'SB0076528', 'SB0074255', 'SB0090123', 'SB0076068', 'SB0076327', 'SB0090309', 'SB0110314', 'SB0110290', 'SB0090533', 'SB0031762', 'SB0033406', 'SB0031190', 'SB0009798', 'SB0033544', 'SB0033760', 'SB0033793', 'SB0033724', 'SB0031315', 'SB0048694', 'SB0033941', 'SB0033989', 'SB0048295', 'SB0033940', 'SB0033865', 'SB0048770', 'SB0048842', 'SB0065924', 'SB0048856', 'SB0068720', 'SB0048944', 'SB0048858', 'SB0048969', 'SB0048844', 'SB0062523', 'SB0090315', 'SB0090132', 'SB0090069', 'SB0090125', 'SB0090133', 'SB0076472', 'SB0076775', 'SB0090189', 'SB0090126', 'SB0076381', 'SB0090254', 'SB0110313', 'SB0091738', 'SB0091942', 'SB0033655', 'SB0031226', 'SB0033445', 'SB0031219', 'SB0031269', 'SB0031225', 'SB0048457', 'SB0048807', 'SB0048808', 'SB0033960', 'SB0048750', 'SB0048658', 'SB0065804', 'SB0048834', 'SB0057194', 'SB0066054', 'SB0066523', 'SB0076814', 'SB0110312', 'SB0033717', 'SB0012594', 'SB0076712', 'SB0090101', 'SB0090063', 'SB0110308', 'SB0110311', 'SB0031176', 'SB0033819', 'SB0031179', 'SB0033716', 'SB0048761', 'SB0069171', 'SB0110303', 'SB0048463', 'SB0062515', 'SB0065946', 'SB0076186', 'SB0110305', 'SB0110307', 'SB0031214', 'SB0031198', 'SB0031208', 'SB0005970', 'SB0068480', 'SB0110306', 'SB0110310', 'SB0110302', 'SB0090427', 'SB0045619', 'SB0068769', 'SB0009664', 'SB0074630', 'SB0052915', 'SB0091091', 'SB0009673', 'SB0045605', 'SB0090599', 'SB0009670', 'SB0066241', 'SB0091502', 'SB0076628', 'SB0076530', 'SB0074544', 'SB0110440', 'SB0076605', 'SB0058103', 'SB0076741', 'SB0091086', 'SB0069276', 'SB0009669', 'SB0076813', 'SB0055573', 'SB0074436', 'SB0057495', 'SB0076614', 'SB0110454', 'SB0065831', 'SB0068774', 'SB0009853', 'SB0052831', 'SB0091080', 'SB0076597', 'SB0091092', 'SB0068776', 'SB0110413', 'SB0067066', 'SB0110437', 'SB0110704', 'SB0059972', 'SB0076795', 'SB0091090', 'SB0056119', 'SB0058133', 'SB0068770', 'SB0046949', 'SB0056465', 'SB0091121', 'SB0045646', 'SB0091158', 'SB0068764', 'SB0091311', 'SB0058016', 'SB0091459', 'SB0068766', 'SB0058157', 'SB0091029', 'SB0110412', 'SB0058115', 'SB0074458', 'SB0076601', 'SB0110415', 'SB0057492', 'SB0110416', 'SB0058023', 'SB0009880', 'SB0073570', 'SB0055467', 'SB0076612', 'SB0110442', 'SB0090909', 'SB0110443', 'SB0065862', 'SB0009849', 'SB0076594', 'SB0110523', 'SB0074629', 'SB0090409', 'SB0090611', 'SB0091050', 'SB0059973', 'SB0091051', 'SB0065605', 'SB0091082', 'SB0065715', 'SB0057531', 'SB0045681', 'SB0091093', 'SB0067941', 'SB0091095', 'SB0068376', 'SB0091098', 'SB0068754', 'SB0091103', 'SB0073533', 'SB0091104', 'SB0056374', 'SB0091115', 'SB0076731', 'SB0091126', 'SB0076735', 'SB0091130', 'SB0076892', 'SB0091143', 'SB0090436', 'SB0091148', 'SB0110706', 'SB0091156', 'SB0065673', 'SB0057682', 'SB0012575', 'SB0091161', 'SB0068575', 'SB0091167', 'SB0056307', 'SB0091169', 'SB0076734', 'SB0091309', 'SB0059645', 'SB0091458', 'SB0065566', 'SB0091469', 'SB0068216', 'SB0058022', 'SB0076713', 'SB0058096', 'SB0090607', 'SB0058125', 'SB0048873', 'SB0009882', 'SB0065801', 'SB0110456', 'SB0076790', 'SB0110701', 'SB0059036', 'SB0090617', 'SB0061213', 'SB0069513', 'SB0091078', 'SB0052914')
order by replace(b.[Post Code], ' ', 'zzz'), a.location, a.Directorate, a.division, a.Section, a.Allocated_User, a.Most_Frequent_User