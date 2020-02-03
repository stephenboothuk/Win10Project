use win10assetdata
go



alter index all on AppsMapping Rebuild;
go

alter index all on hw rebuild;
go

alter index all on sw rebuild;
go

alter index all on email_addresses Rebuild;
go

alter index all on engineerCalls rebuild;
go



update statistics win10assetdata.dbo.hw;
go

update statistics win10assetdata.dbo.hw LocationAsset;
go

update statistics win10assetdata.dbo.hw idx_hw_assetTag_directorate_division_section;
go

update statistics win10assetdata.dbo.hw unqAssetTag;
go

update statistics win10assetdata.dbo.sw;
go


update statistics win10assetdata.dbo.sw AppDevice;
go

update statistics win10assetdata.dbo.sw idx_sw_applicationName_UsedCount;
go

update statistics win10assetdata.dbo.sw idx_sw_computerName_applicationName_usedCount;
go

update statistics win10assetdata.dbo.email_addresses;
go

update statistics win10assetdata.dbo.email_addresses UserEmail;
go

update statistics win10assetdata.dbo.appsmapping
go

update statistics win10assetdata.dbo.appsmapping Clustered_map_app_costing
go

 
update statistics win10assetdata.dbo.appsmapping targetInstall
go

update statistics win10assetdata.dbo.VIPS
go

update statistics win10assetdata.dbo.VIPS idxVIPSClustered
go

update statistics win10assetdata.dbo.email_addresses
go

update statistics win10assetdata.dbo.email_addresses UserEmail
go

update statistics win10assetdata.dbo.engineercalls;
go


update statistics win10assetdata.dbo.engineercalls idx_opened;
go


update statistics win10assetdata.dbo.engineercalls idx_Reference;
go


update statistics win10assetdata.dbo.engineercalls idx_ResolvedAt;
go

