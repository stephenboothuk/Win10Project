select asset_tag, model, model_category, Manufacturer, directorate, division, Section, User_ID, Most_Frequent_User_ID, Last_Logged_On_User_ID
from HW
where User_ID like 'kios%'
or Most_Frequent_User_ID like 'kios%'
or Last_Logged_On_User_ID like 'kios%'
or User_ID like 'Kios%'
or Most_Frequent_User_ID like 'Kios%'
or Last_Logged_On_User_ID like 'Kios%'