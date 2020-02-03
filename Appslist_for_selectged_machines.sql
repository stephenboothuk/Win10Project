use win10assetdata
go

select  h.application_name, count(a.asset_tag) as Number_installs
from dbo.hardware_readiness_B a left outer join HW b on (a.Asset_tag = b.Asset_tag)
left outer join Outcomes c on (a.IsItOK = c.IsitOK) 
  left outer join PC_Classifications d on (a.Model = d.Model)
  left outer join allocated_email e on (e.[user name] = b.User_ID)
left outer join last_email f on (f.[user name] = b.Last_Logged_On_User_ID)
left outer join frequent_email g on (g.[user name] = b.Most_Frequent_User_ID)
left outer join SW h on (a.Asset_tag = h.computer_name)
left outer join FWAppsDetails i on (h.application_name=i.application_name)
where a.Asset_tag = ('SB0009505', 'SB0009558', 'SB0009625', 'SB0009631', 'SB0009632', 'SB0009639', 'SB0009665', 'SB0009666', 'SB0009672', 'SB0009789', 'SB0009887', 'SB0012592', 'SB0012593', 'SB0012599', 'SB0012612', 'SB0030406', 'SB0030410', 'SB0030412', 'SB0030552', 'SB0031011', 'SB0031227', 'SB0031229', 'SB0031297', 'SB0031304', 'SB0031658', 'SB0031660', 'SB0031661', 'SB0031663', 'SB0031664', 'SB0031668', 'SB0031670', 'SB0031671', 'SB0031672', 'SB0031673', 'SB0031720', 'SB0031721', 'SB0031722', 'SB0031909', 'SB0031910', 'SB0031926', 'SB0031934', 'SB0031959', 'SB0031964', 'SB0031986', 'SB0033226', 'SB0033253', 'SB0033340', 'SB0033388', 'SB0033403', 'SB0033404', 'SB0033412', 'SB0033442', 'SB0033444', 'SB0033462', 'SB0033469', 'SB0033471', 'SB0033475', 'SB0033528', 'SB0033531', 'SB0033547', 'SB0033557', 'SB0033559', 'SB0033562', 'SB0033565', 'SB0033588', 'SB0033642', 'SB0033643', 'SB0033644', 'SB0033645', 'SB0033647', 'SB0033648', 'SB0033650', 'SB0033651', 'SB0033654', 'SB0033656', 'SB0033658', 'SB0033681', 'SB0033683', 'SB0033684', 'SB0033690', 'SB0033713', 'SB0033715', 'SB0033722', 'SB0033727', 'SB0033729', 'SB0033730', 'SB0033734', 'SB0033738', 'SB0033745', 'SB0033747', 'SB0033749', 'SB0033762', 'SB0033766', 'SB0033785', 'SB0033786', 'SB0033787', 'SB0033788', 'SB0033792', 'SB0033796', 'SB0033808', 'SB0033812', 'SB0033815', 'SB0033822', 'SB0033826', 'SB0033829', 'SB0033831', 'SB0033832', 'SB0033834', 'SB0033836', 'SB0033837', 'SB0033844', 'SB0033856', 'SB0033868', 'SB0033869', 'SB0033870', 'SB0033873', 'SB0033881', 'SB0033882', 'SB0033883', 'SB0033920', 'SB0033921', 'SB0033922', 'SB0033923', 'SB0033938', 'SB0033943', 'SB0033957', 'SB0033965', 'SB0033975', 'SB0045914', 'SB0045967', 'SB0045982', 'SB0045984', 'SB0046794', 'SB0046803', 'SB0046908', 'SB0048019', 'SB0048208', 'SB0048286', 'SB0048292', 'SB0048300', 'SB0048314', 'SB0048316', 'SB0048337', 'SB0048414', 'SB0048435', 'SB0048451', 'SB0048464', 'SB0048476', 'SB0048477', 'SB0048483', 'SB0048485', 'SB0048490', 'SB0048514', 'SB0048520', 'SB0048521', 'SB0048522', 'SB0048523', 'SB0048543', 'SB0048545', 'SB0048546', 'SB0048548', 'SB0048549', 'SB0048551', 'SB0048575', 'SB0048577', 'SB0048578', 'SB0048579', 'SB0048602', 'SB0048607', 'SB0048609', 'SB0048612', 'SB0048615', 'SB0048621', 'SB0048623', 'SB0048630', 'SB0048634', 'SB0048637', 'SB0048657', 'SB0048674', 'SB0048676', 'SB0048678', 'SB0048684', 'SB0048685', 'SB0048692', 'SB0048699', 'SB0048702', 'SB0048705', 'SB0048707', 'SB0048718', 'SB0048721', 'SB0048722', 'SB0048752', 'SB0048757', 'SB0048781', 'SB0048790', 'SB0048793', 'SB0048860', 'SB0048862', 'SB0048865', 'SB0048877', 'SB0048893', 'SB0048901', 'SB0048902', 'SB0048904', 'SB0048905', 'SB0048920', 'SB0048930', 'SB0048931', 'SB0048932', 'SB0048935', 'SB0048942', 'SB0048943', 'SB0048945', 'SB0048947', 'SB0048950', 'SB0061251', 'SB0061287', 'SB0061308', 'SB0061409', 'SB0062015', 'SB0062273', 'SB0062356', 'SB0062470', 'SB0063073', 'SB0065562', 'SB0065571', 'SB0065573', 'SB0065588', 'SB0065595', 'SB0065597', 'SB0065598', 'SB0065599', 'SB0065726', 'SB0065767', 'SB0065781', 'SB0065786', 'SB0065787', 'SB0065809', 'SB0065826', 'SB0065840', 'SB0065844', 'SB0065869', 'SB0065873', 'SB0065877', 'SB0065886', 'SB0065893', 'SB0065911', 'SB0065923', 'SB0065943', 'SB0065960', 'SB0065969', 'SB0066072', 'SB0066077', 'SB0066178', 'SB0066205', 'SB0066207', 'SB0066212', 'SB0066238', 'SB0066299', 'SB0066364', 'SB0066568', 'SB0066577', 'SB0066578', 'SB0066579', 'SB0066590', 'SB0066760', 'SB0066761', 'SB0066783', 'SB0066797', 'SB0066804', 'SB0066856', 'SB0066869', 'SB0066874', 'SB0066879', 'SB0066881', 'SB0066888', 'SB0066893', 'SB0066894', 'SB0066896', 'SB0066897', 'SB0066920', 'SB0066924', 'SB0066926', 'SB0066933', 'SB0066936', 'SB0067957', 'SB0067972', 'SB0068507', 'SB0068877', 'SB0068878', 'SB0069129', 'SB0069950', 'SB0069969', 'SB0069991', 'SB0071843', 'SB0073408', 'SB0073814', 'SB0073822', 'SB0074066', 'SB0074152', 'SB0074200', 'SB0074201', 'SB0074203', 'SB0074204', 'SB0074205', 'SB0074207', 'SB0074209', 'SB0074227', 'SB0074272', 'SB0074292', 'SB0074322', 'SB0074329', 'SB0074469', 'SB0074502', 'SB0074519', 'SB0074570', 'SB0074613', 'SB0074627', 'SB0074628', 'SB0074759', 'SB0074764', 'SB0074765', 'SB0074776', 'SB0074787', 'SB0074796', 'SB0074889', 'SB0074973', 'SB0074996', 'SB0076052', 'SB0076299', 'SB0076385', 'SB0076522', 'SB0076531', 'SB0076587', 'SB0076593', 'SB0076599', 'SB0076603', 'SB0076606', 'SB0076622', 'SB0076718', 'SB0076732', 'SB0076738', 'SB0076766', 'SB0076789', 'SB0076804', 'SB0076827', 'SB0076873', 'SB0076889', 'SB0076929', 'SB0090034', 'SB0090062', 'SB0090064', 'SB0090072', 'SB0090075', 'SB0090097', 'SB0090253', 'SB0090287', 'SB0090288', 'SB0090289', 'SB0090298', 'SB0090303', 'SB0090304', 'SB0090329', 'SB0090345', 'SB0090348', 'SB0090350', 'SB0090352', 'SB0090353', 'SB0090379', 'SB0090390', 'SB0090391', 'SB0090445', 'SB0090468', 'SB0090471', 'SB0090480', 'SB0090483', 'SB0090496', 'SB0090511', 'SB0090516', 'SB0090528', 'SB0090539', 'SB0090552', 'SB0090564', 'SB0090574', 'SB0090903', 'SB0091548', 'SB0091581', 'SB0091592', 'SB0091595', 'SB0091596', 'SB0091600', 'SB0091633', 'SB0091634', 'SB0091637', 'SB0091639', 'SB0091640', 'SB0091641', 'SB0091642', 'SB0091643', 'SB0091644', 'SB0091653', 'SB0091655', 'SB0091656', 'SB0091659', 'SB0091660', 'SB0091662', 'SB0091663', 'SB0091664', 'SB0091667', 'SB0091672', 'SB0091676', 'SB0091677', 'SB0091678', 'SB0091679', 'SB0091893', 'SB0091925', 'SB0091926', 'SB0091927', 'SB0091928', 'SB0091932', 'SB0091934', 'SB0091937', 'SB0091939', 'SB0091940', 'SB0109012', 'SB0109014', 'SB0109083', 'SB0109154', 'SB0110159', 'SB0110293', 'SB0110402', 'SB0110403', 'SB0110405', 'SB0110419', 'SB0110420', 'SB0110421', 'SB0110424', 'SB0110426', 'SB0110428', 'SB0110447', 'SB0110448', 'SB0110487', 'SB0110489', 'SB0110779', 'SB0110797', 'SB0110821', 'SB0110825', 'SB0110828', 'SB0110831', 'SB0110832', 'SB0110841', 'SB0110842', 'SB0110844', 'SB0110846', 'SB0110847', 'SB0110848', 'SB0110851', 'SB0110858', 'SB0110859', 'SB0110862', 'SB0110865', 'SB0110884', 'SB0110896', 'SB0110899', 'SB0110902', 'SB0110903', 'SB0110907', 'SB0110914', 'SB0110917', 'SB0110918', 'SB0110925', 'SB0110942', 'SB0110944', 'SB0110955', 'SB0111147', 'SB0111148', 'SB0111149', 'SB0111150', 'SB0111151', 'SB0111152', 'SB0111153', 'SB0111154', 'SB0111155', 'SB0111157', 'SB0111168', 'SB0111172', 'SB0111184', 'SB0111185', 'SB0111188', 'SB0111189', 'SB0111191', 'SB0111210', 'SB0111219', 'SB0111220', 'SB0111221', 'SB0111256', 'SB0111271', 'SB0111273', 'SB0111279', 'SB0111281')
and i.Care=1
group by h.application_name
order by application_name