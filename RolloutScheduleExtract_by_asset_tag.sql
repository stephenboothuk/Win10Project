
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
, dbo.FinalOutcome(a.FullYearsOld, f.Outcome, a.Asset_tag) as FinalOutcome
, '' as 'Upgrade Status'
, a.Asset_tag
, '' as 'New Machine ID'
, a.Model
, a.model_category
, g.Target_Provision
, g.TargetModel
, a.Operating_System
from hardware_readiness_B a left outer join locationDetails b on (a.Location = b.Name)
left outer join allocated_Email c on (a.Allocated_UID = c.[User Name])
left outer join frequent_Email d on (a.Most_Frequent_UID = d.[User Name])
left outer join last_Email e on (a.last_user_id = e.[User Name])
left outer join outcomes f on (a.IsItOK = f.IsItOK)
left outer join PC_Classifications g on (a.Model = g.Model)
where a.Asset_tag in ('SB0068388',
'SB0068386',
'SB0068370',
'SB0068384',
'SB0068374',
'SB0056763',
'SB0067419',
'SB0067888',
'SB0066875',
'SB0061312',
'SB0033296',
'SB0068275',
'SB0033947',
'SB0076248',
'SB0074360',
'SB0091766',
'SB0110813',
'SB0062318',
'SB0061271',
'SB0090135',
'SB0067389',
'SB0069987',
'SB0033937',
'SB0110383',
'SB0073413',
'SB0033973',
'SB0110804',
'SB0068148',
'SB0069400',
'SB0067755',
'SB0031990',
'SB0062422',
'SB0067427',
'SB0066266',
'SB0009628',
'SB0091454',
'SB0031164',
'SB0062564',
'SB0058764',
'SB0009618',
'SB0090175',
'SB0065926',
'SB0031989',
'SB0048792',
'SB0063064',
'SB0048345',
'SB0110856',
'SB0033367',
'SB0091387',
'SB0066867',
'SB0067910',
'SB0066571',
'SB0062293',
'SB0057198',
'SB0055294',
'SB0057754',
'SB0091022',
'SB0063022',
'SB0109137',
'SB0110755',
'SB0062288',
'SB0076729',
'SB0061466',
'SB0069982',
'SB0048026',
'SB0062024',
'SB0068359',
'SB0067438',
'SB0109037',
'SB0031364',
'SB0091731',
'SB0048420',
'SB0091917',
'SB0076611',
'SB0076855',
'SB0110959',
'SB0062353',
'SB0067158',
'SB0110724',
'SB0066348',
'SB0048739',
'SB0061335',
'SB0048976',
'SB0031149',
'SB0074773',
'SB0074202',
'SB0110827',
'SB0091544',
'SB0110805',
'SB0048980',
'SB0068242',
'SB0062382',
'SB0009565',
'SB0065808',
'SB0009624',
'SB0061474',
'SB0062474',
'SB0076393',
'SB0091742',
'SB0048207',
'SB0009614',
'SB0110970',
'SB0059561',
'SB0062340',
'SB0031983',
'SB0091747',
'SB0076335',
'SB0062004',
'SB0067632',
'SB0062304',
'SB0091437',
'SB0068123',
'SB0031089',
'SB0074264',
'SB0091746',
'SB0062344',
'SB0090036',
'SB0090349',
'SB0090247',
'SB0067439',
'SB0090916',
'SB0110967',
'SB0061209',
'SB0048530',
'SB0000994',
'SB0062384',
'SB0062328',
'SB0067930',
'SB0069977',
'SB0090452',
'SB0069941',
'SB0066851',
'SB0090043',
'SB0076426',
'SB0067171',
'SB0045845',
'SB0062623',
'SB0062314',
'SB0090549',
'SB0061402',
'SB0090030',
'SB0048764',
'SB0091685',
'SB0091723',
'SB0062298',
'SB0076834',
'SB0076389',
'SB0069138',
'SB0066302',
'SB0069958',
'SB0067637',
'SB0090485',
'SB0031303',
'SB0109107',
'SB0074338',
'SB0059833',
'SB0063036',
'SB0074172',
'SB0009361',
'SB0067885',
'SB0031587',
'SB0066304',
'SB0091446',
'SB0091919',
'SB0090499',
'SB0074148',
'SB0066759',
'SB0066701',
'SB0069196',
'SB0067415',
'SB0090554',
'SB0062202',
'SB0091898',
'SB0066798',
'SB0061337',
'SB0048293',
'SB0046905',
'SB0076609',
'SB0090558',
'SB0110463',
'SB0033244',
'SB0031106',
'SB0070000',
'SB0076042',
'SB0062303',
'SB0091128',
'SB0065618',
'SB0091736',
'SB0031146',
'SB0090032',
'SB0031091',
'SB0091683',
'SB0069967',
'SB0033958',
'SB0091159',
'SB0031076',
'SB0091113',
'SB0110401',
'SB0110993',
'SB0091759',
'SB0009543',
'SB0009429',
'SB0091106',
'SB0069590',
'SB0069468',
'SB0031096',
'SB0073422',
'SB0073529',
'SB0090526',
'SB0033287',
'SB0069974',
'SB0069799',
'SB0061455',
'SB0069716',
'SB0068245',
'SB0067634',
'SB0068469',
'SB0110962',
'SB0091739',
'SB0061290',
'SB0067625',
'SB0091734',
'SB0076040',
'SB0066792',
'SB0010528',
'SB0009373',
'SB0091443',
'SB0091755',
'SB0067437',
'SB0062359',
'SB0062440',
'SB0068383',
'SB0058979',
'SB0110390',
'SB0069587',
'SB0010560',
'SB0031299',
'SB0091752',
'SB0048733',
'SB0090008',
'SB0091260',
'SB0031230',
'SB0090019',
'SB0076958',
'SB0066870',
'SB0067416',
'SB0009574',
'SB0091910',
'SB0069193',
'SB0067622',
'SB0046952',
'SB0091722',
'SB0065851',
'SB0061454',
'SB0048017',
'SB0048288',
'SB0069588',
'SB0091945',
'SB0067820',
'SB0033966',
'SB0031098',
'SB0091389',
'SB0067431',
'SB0066917',
'SB0068504',
'SB0074650',
'SB0061293',
'SB0062476',
'SB0090242',
'SB0074344',
'SB0067684',
'SB0066269',
'SB0048441',
'SB0009362',
'SB0010526',
'SB0061437',
'SB0033999',
'SB0048654',
'SB0061399',
'SB0067160',
'SB0066592',
'SB0009611',
'SB0061470',
'SB0055289',
'SB0076510',
'SB0067633',
'SB0091756',
'SB0091494',
'SB0091768',
'SB0067627',
'SB0065917',
'SB0063092',
'SB0110803',
'SB0031984',
'SB0090510',
'SB0059976',
'SB0091745',
'SB0062451',
'SB0068503',
'SB0068864',
'SB0110458',
'SB0067928',
'SB0009526',
'SB0066918',
'SB0068290',
'SB0090605',
'SB0068452',
'SB0090310',
'SB0061469',
'SB0067849',
'SB0009506',
'SB0062282',
'SB0066799',
'SB0076310',
'SB0065779',
'SB0061471',
'SB0073874',
'SB0067624',
'SB0062201',
'SB0059265',
'SB0061305',
'SB0076982',
'SB0110999',
'SB0048034',
'SB0033983',
'SB0063029',
'SB0110149',
'SB0069179',
'SB0090618',
'SB0090505',
'SB0066048',
'SB0110753',
'SB0061464',
'SB0091899',
'SB0062375',
'SB0067709',
'SB0062424',
'SB0110934',
'SB0091952',
'SB0091726',
'SB0033589',
'SB0058293',
'SB0110969',
'SB0110957',
'SB0091108',
'SB0066861',
'SB0090281',
'SB0067703',
'SB0059944',
'SB0061465',
'SB0090007',
'SB0031142',
'SB0033976',
'SB0076348',
'SB0091901',
'SB0076506',
'SB0110289',
'SB0090365',
'SB0091957',
'SB0048342',
'SB0091733',
'SB0090506',
'SB0110908',
'SB0067155',
'SB0059049',
'SB0067254',
'SB0091391',
'SB0067884',
'SB0031767',
'SB0091725',
'SB0048897',
'SB0033372',
'SB0031979',
'SB0033295',
'SB0033363',
'SB0091392',
'SB0031145',
'SB0090469',
'SB0062343',
'SB0069580',
'SB0001000',
'SB0066500',
'SB0090270',
'SB0091720',
'SB0091757',
'SB0069980',
'SB0031993',
'SB0110382',
'SB0067874',
'SB0048018',
'SB0058765',
'SB0048529',
'SB0074871',
'SB0068288',
'SB0048027',
'SB0090194',
'SB0062294',
'SB0067630',
'SB0066591',
'SB0063045',
'SB0067719',
'SB0048061',
'SB0031090',
'SB0110387',
'SB0031157',
'SB0066878',
'SB0069975',
'SB0090428',
'SB0068235',
'SB0090318',
'SB0059037',
'SB0073859',
'SB0067172',
'SB0090996',
'SB0062271',
'SB0073519',
'SB0048348',
'SB0090571',
'SB0066673',
'SB0091905',
'SB0033944',
'SB0033981',
'sb0091439',
'SB0066217',
'SB0090187',
'SB0091037',
'SB0048851',
'SB0069721',
'SB0031105',
'SB0066540',
'SB0031150',
'SB0009617',
'SB0048204',
'SB0073860',
'SB0062589',
'SB0062438',
'SB0069465',
'SB0069471',
'SB0090252',
'SB0069470',
'SB0109189',
'SB0031982',
'SB0076280',
'SB0067974',
'SB0033543',
'SB0110744',
'SB0033397',
'SB0076224',
'SB0091743',
'SB0110894',
'SB0062269',
'SB0048285',
'SB0066791',
'SB0110965',
'SB0110273',
'SB0069966',
'SB0090271',
'SB0073473',
'SB0090502',
'SB0090268',
'SB0033284',
'SB0068147',
'SB0067938',
'SB0110439',
'SB0059904',
'SB0066880',
'SB0066272',
'SB0048281',
'SB0091749',
'SB0048740',
'SB0031103',
'SB0048153',
'SB0110905',
'SB0066418',
'SB0069998',
'SB0091760',
'SB0067708',
'SB0066889',
'SB0048738',
'SB0090264',
'SB0090459',
'SB0110924',
'SB0091918',
'SB0067585',
'SB0068346',
'SB0067152',
'SB0033987',
'SB0061458',
'SB0067317',
'SB0110853',
'SB0009539',
'SB0073534',
'SB0066859',
'SB0091399',
'SB0061472',
'SB0062439',
'SB0091744',
'SB0062592',
'SB0066583',
'SB0073409',
'SB0059066',
'SB0090317',
'SB0091124',
'SB0091145',
'SB0063026',
'SB0110441',
'SB0069978',
'SB0048763',
'SB0065903',
'SB0062005',
'SB0067908',
'SB0069990',
'SB0033476',
'SB0068401',
'SB0067095',
'SB0067917',
'SB0074151',
'SB0048291',
'SB0010550',
'SB0033470',
'SB0033932',
'SB0073812',
'SB0065908',
'SB0090258',
'SB0068876',
'Sb0009566',
'SB0046966',
'SB0066501',
'SB0062007',
'SB0091765',
'SB0068438',
'SB0090546',
'SB0031152',
'SB0009368',
'SB0110455',
'SB0074372',
'SB0090368',
'SB0091724',
'SB0110411',
'SB0076951',
'SB0076950',
'SB0076375',
'SB0091044',
'SB0076719',
'SB0057620',
'SB0031231',
'SB0031123',
'SB0061289',
'SB0067967',
'SB0033935',
'SB0031141',
'SB0067868',
'SB0091052',
'SB0031588',
'SB0091035',
'SB0073414',
'SB0110408',
'SB0031589',
'SB0046907',
'SB0110406',
'SB0033967',
'SB0066784',
'SB0061296',
'SB0059269',
'SB0110315',
'SB0069981',
'SB0074129',
'SB0031547',
'SB0066594',
'SB0076938',
'SB0110423',
'SB0062418',
'SB0031985',
'SB0048737',
'SB0090307',
'SB0091453',
'SB0033931',
'SB0068363',
'SB0031109',
'SB0090442',
'SB0031153',
'SB0090272',
'SB0033285',
'SB0091769',
'SB0074872',
'SB0062283',
'SB0009589',
'SB0033956',
'SB0059993',
'SB0062417',
'SB0090789',
'SB0066764',
'SB0091570',
'SB0066866',
'SB0031125',
'SB0091751',
'SB0066067',
'SB0090392',
'SB0067979',
'SB0048261',
'SB0090324',
'SB0110963',
'SB0076431',
'SB0067963',
'SB0076056',
'SB0067761',
'SB0065594',
'SB0067939',
'SB0091721',
'SB0033982',
'SB0065766',
'SB0069952',
'SB0033953',
'SB0090360',
'SB0031943',
'SB0031144',
'SB0068362',
'SB0031301',
'SB0048736',
'SB0076928',
'SB0091465',
'SB0033997',
'SB0033955',
'SB0065774',
'SB0067628',
'SB0031166',
'SB0068149',
'SB0062008',
'SB0000992',
'SB0068271',
'SB0031156',
'SB0090810',
'SB0048354',
'SB0090192',
'SB0066890',
'SB0091737',
'SB0031298',
'SB0065870',
'SB0091911',
'SB0068347',
'SB0090015',
'SB0090014',
'SB0074284',
'SB0031992',
'SB0033465',
'SB0091748',
'SB0031102',
'SB0059905',
'SB0066416',
'SB0067721',
'SB0068398',
'SB0110407',
'SB0066595',
'SB0069151',
'SB0031126',
'SB0031296',
'SB0091914',
'SB0048726',
'SB0009364',
'SB0033948',
'SB0048016',
'SB0031163',
'SB0090508',
'SB0067753',
'SB0031087',
'SB0033370',
'SB0110956',
'SB0033964',
'SB0091054',
'SB0090241',
'SB0069992',
'SB0033381',
'SB0091081',
'SB0048735',
'SB0069802',
'SB0033934',
'SB0012583',
'SB0090454',
'sb0033467',
'SB0069224',
'SB0090616',
'SB0033945',
'SB0067768',
'SB0010522',
'SB0068884',
'SB0068272',
'SB0068244',
'SB0031977',
'SB0067847',
'SB0091111',
'SB0110674',
'SB0062460',
'SB0090613',
'SB0090385',
'SB0074169',
'SB0091066',
'SB0065765',
'SB0065772',
'SB0069581',
'SB0076911',
'SB0009899',
'SB0048795',
'SB0110837',
'SB0076367',
'SB0110975',
'SB0061467',
'SB0091142',
'SB0066939',
'SB0074638',
'SB0090051',
'SB0062402',
'SB0110808',
'SB0069794',
'SB0048748',
'SB0090815',
'SB0090319',
'SB0090818',
'SB0033256',
'SB0110679',
'SB0062467',
'SB0091211',
'SB0091068',
'SB0073839',
'SB0048010',
'SB0068265',
'SB0033393',
'SB0076392',
'SB0010557',
'SB0110964',
'SB0061345',
'SB0091953',
'SB0065847',
'SB0076370',
'SB0091208',
'SB0057722',
'SB0066914',
'SB0110678',
'sb0048294',
'SB0076877',
'SB0110747',
'SB0031916',
'SB0066913',
'SB0031904',
'SB0057637',
'SB0031987',
'SB0009545',
'SB0110385',
'SB0090600',
'SB0048896',
'SB0065776',
'SB0074166',
'SB0066231',
'SB0062019',
'SB0009612',
'SB0048977',
'SB0110444',
'SB0065953',
'SB0061174',
'SB0090562',
'SB0066876',
'SB0076041',
'SB0046898',
'SB0065789',
'SB0062317',
'SB0091109',
'SB0074666',
'SB0110759',
'SB0091069',
'SB0062416',
'SB0091210',
'SB0031094',
'SB0033413',
'SB0110676',
'SB0110445',
'SB0091206',
'SB0091207',
'SB0111286',
'SB0111250',
'SB0091906',
'SB0031920',
'SB0090487',
'SB0033294',
'SB0074463',
'SB0091904',
'SB0066608',
'SB0090282',
'SB0066786',
'SB0091484',
'SB0031233',
'SB0031988',
'SB0031928',
'SB0061401',
'SB0110752',
'SB0061292',
'SB0061204',
'SB0063087',
'SB0110801',
'SB0110672',
'SB0048339',
'SB0110670',
'SB0009424',
'SB0045624',
'SB0009584',
'SB0091209',
'SB0048398',
'SB0065992',
'SB0090493',
'SB0091028',
'SB0091958',
'SB0076976',
'SB0091107',
'SB0009629',
'SB0110757',
'SB0090576',
'SB0090845',
'SB0061468',
'SB0091753',
'SB0048800',
'SB0091071',
'SB0062027',
'SB0110802',
'SB0074279',
'SB0110806',
'SB0090173',
'SB0061069',
'SB0091070',
'SB0069800',
'SB0067536',
'SB0033541',
'SB0110749',
'SB0091067',
'SB0048431',
'SB0069522',
'SB0066694',
'SB0009542',
'SB0063089',
'SB0069589',
'SB0033460',
'SB0091349',
'SB0048723',
'SB0091112',
'SB0090011',
'SB0048437',
'SB0067384',
'SB0069626',
'SB0091110',
'SB0048979',
'SB0031911',
'SB0065892',
'SB0110933',
'SB0091912',
'SB0031228',
'SB0091916',
'SB0090038',
'SB0110754',
'SB0066922',
'SB0009371',
'SB0067567',
'SB0009705',
'SB0048448',
'SB0048290',
'SB0059964',
'SB0091908',
'SB0090817',
'SB0033928',
'SB0067750',
'SB0110748')
