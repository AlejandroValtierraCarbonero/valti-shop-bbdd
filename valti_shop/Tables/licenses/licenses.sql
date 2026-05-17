create table [licenses].[licenses] (
    [id] int identity(1,1) not null,
    [name] nvarchar(200) not null,
    [description] nvarchar(max) null,
    [valid_from] datetime2(7) not null,
    [valid_to] datetime2(7) not null,
    [issuer_id] int not null,
    [sys_start] datetime2(7) generated always as row start not null,
    [sys_end] datetime2(7) generated always as row end not null,
    constraint [pk_licenses] primary key clustered ([id]),
    constraint [fk_licenses_issuers] foreign key ([issuer_id]) references [licenses].[issuers]([id]),
    period for system_time ([sys_start], [sys_end])
) with (system_versioning = on (history_table = [licenses].[licenses_history]))
