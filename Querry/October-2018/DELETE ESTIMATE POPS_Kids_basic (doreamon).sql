--C1
DELETE `pops-204909.KIDS.POPS_Kids_Basic` i
WHERE i.DATE IN 
(
select DATE from `pops-204909.KIDS.POPS_Kids_Basic` where DATE='2018-08-01 00:00:00 UTC'
)
--C2
DELETE `pops-204909.KIDS.POPS_Kids_Basic` WHERE DATE='2018-08-01 00:00:00 UTC'

---CHECK
SELECT * FROM `pops-204909.KIDS.POPS_Kids_Basic` WHERE DATE='2018-08-01 00:00:00 UTC'