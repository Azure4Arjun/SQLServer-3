SELECT scheduler_id,
       status,
       current_tasks_count,
       runnable_tasks_count,
       active_workers_count,
       work_queue_count
FROM sys.dm_os_schedulers
WHERE status = 'VISIBLE ONLINE';