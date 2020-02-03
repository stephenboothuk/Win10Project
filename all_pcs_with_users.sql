use win10assetdata
go

select a.Asset_tag
, a.Allocated_User
, a.User_ID
, a.Last_logged_on_user_name
, a.Last_Logged_On_User_ID
, a.Most_Frequent_User_Name
, a.Most_Frequent_User_ID
, a.Directorate
, a.Division
, a.Section
from dbo.HW a 

