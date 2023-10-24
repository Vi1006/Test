/*CREATE TABLE IF NOT EXISTS public.role
(
    role_id integer NOT NULL,
    role_short_name character varying COLLATE pg_catalog."default",
    role_long_name character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT role_pkey PRIMARY KEY (role_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.role
    OWNER to postgres;
*/	


-- Table: USER_ROLES                                         

CREATE TABLE IF NOT EXISTS public.user_roles 
(
   user_roles_id        integer                        not null,
   role_id              integer                        null,
   user_id              integer                        null,
   CONSTRAINT pk_user_roles PRIMARY KEY (user_roles_id)
);

ALTER TABLE user_roles
   ADD CONSTRAINT fk_user_rol_reference_role FOREIGN KEY (role_id)
      REFERENCES "role" (role_id)
      on update restrict
      on delete restrict;

ALTER TABLE user_roles
   ADD CONSTRAINT fk_role_rol_reference_role FOREIGN KEY (user_id)
      REFERENCES "user" (user_id)
      on update restrict
      on delete restrict;