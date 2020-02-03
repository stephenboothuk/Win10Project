use win10assetdata
go

alter index [idx_sw_applicationName_UsedCount] ON [dbo].[SW] rebuild
alter index [idx_sw_computerName_applicationName_usedCount] ON [dbo].[SW] rebuild
alter INDEX [LOBAppCare] ON [dbo].[LOB_Apps] rebuild
alter INDEX [idx_lobApps_Care_packageCovered] ON [dbo].[LOB_Apps] rebuild
alter INDEX [idx_hw_assetTag_directorate_division_section] ON [dbo].[HW] rebuild
go

