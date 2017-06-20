CREATE EVENT SESSION [login] ON SERVER 
ADD EVENT sqlserver.login(SET collect_database_name=(1),collect_options_text=(1)
    ACTION(sqlserver.client_app_name,sqlserver.client_hostname,sqlserver.database_name,sqlserver.nt_username,sqlserver.session_id,sqlserver.sql_text,sqlserver.username)
    WHERE ([sqlserver].[session_nt_user]=N'svcrocksolidsql' OR [sqlserver].[session_nt_user]=N'svcrocksolid'))
ADD TARGET package0.event_file(SET filename=N'login.xel',max_file_size=(10))
WITH (MAX_MEMORY=4096 KB,EVENT_RETENTION_MODE=ALLOW_SINGLE_EVENT_LOSS,MAX_DISPATCH_LATENCY=30 SECONDS,MAX_EVENT_SIZE=0 KB,MEMORY_PARTITION_MODE=NONE,TRACK_CAUSALITY=OFF,STARTUP_STATE=OFF)
GO


