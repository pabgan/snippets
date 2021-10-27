select o.*, d.code_description
	from dcpc_status_code o
	join status_codes_descriptions d
		on status_code=code_number
	where code_type='DcPc'
		and collection_date>sysdate-1/24
		and <++>=<++>;
