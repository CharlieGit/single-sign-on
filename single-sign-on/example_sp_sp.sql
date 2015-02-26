create procedure example_sp(
	in @username varchar(100),
	out @result int,
	out @license_id int
)
begin
	START TRANSACTION;
	select id into @license_id from portal.license where owner = @username limit 1;
	if(@license_id is NULL)
		then
			select id into @license_id from portal.license where occupied = 'Y' and occupied_by = @username limit 1;
			if(@license_id is NULL)
				then
					select id into @license_id from portal.license where occupied = 'N' limit 1;
					if(@license_id is NULL)
						then 
							set @result = 0; -- no free license
						else 
							set @result = 1; -- free share license
							update portal.license set  occupied = 'Y', occupied_by = @username, occupied_time = CURRENT_TIMESTAMP() where id = @license_id;
					end if;
				else 
					set @result = 2; -- already occupied
					update portal.license set  occupied = 'Y', occupied_by = @username, occupied_time = CURRENT_TIMESTAMP() where id = @license_id;
			end if;
		else
			set @result = 3; -- fix license
			update portal.license set  occupied = 'Y', occupied_by = @username, occupied_time = CURRENT_TIMESTAMP() where id = @license_id;
	end if;	
	COMMIT;
end; 
