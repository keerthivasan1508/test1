
      
        
            delete from "postgres"."dervied_clean"."my_table"
            where (
                id) in (
                select (id)
                from "my_table__dbt_tmp135609884182"
            );

        
    

    insert into "postgres"."dervied_clean"."my_table" ("id", "name", "email", "created_at", "updated_at")
    (
        select "id", "name", "email", "created_at", "updated_at"
        from "my_table__dbt_tmp135609884182"
    )
  