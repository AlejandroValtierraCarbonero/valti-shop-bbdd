create table [licenses].[issuers] (
    [id] int identity(1,1) not null,
    [name] nvarchar(200) not null,
    [description] nvarchar(max) null,
    [contact_phone] nvarchar(50) null,
    [contact_email] nvarchar(255) null,
    [physical_address] nvarchar(500) null,
    [sys_start] datetime2(7) generated always as row start not null,
    [sys_end] datetime2(7) generated always as row end not null,
    constraint [pk_issuers] primary key clustered ([id]),
    period for system_time ([sys_start], [sys_end])
) with (system_versioning = on (history_table = [licenses].[issuers_history]))
