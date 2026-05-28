SELECT * FROM stroke

--create table--
create table stroke_stages
(like stroke including all)

--Entering data--
insert into stroke_stages 
select * from stroke

select * from stroke_stages

--rename column--
alter table stroke_stages 
rename column age
to age_patient

--cek duplicate
with duplicate_cte as
(
	select  *,
	row_number()
	over
	(
		partition  by
		id,
		gender,
		age_patient,
		hypertension,
		heart_disease,
		ever_married,
		work_type,
		residence_type,
		avg_glucose_level,
		bmi,
		smoking_status,
		stroke	
	)as row_num
	from stroke_stages
)
select*from duplicate_cte
where row_num>1

--heck null value and empty
select * from stroke_stages ss
where 	id 					IS NULL		OR	   			 
		age_patient 		IS NULL 	OR 
    	hypertension		IS NULL 	OR 
    	heart_disease 		IS NULL 	OR 
   		avg_glucose_level 	IS NULL 	OR 
   	 	bmi 				IS NULL 	OR   
    	stroke				IS NULL 	OR
		gender				IS NULL 	OR gender = '' OR								
   		ever_married 		IS NULL 	OR ever_married = '' OR
    	work_type 			IS NULL 	OR work_type = '' OR
    	residence_type 		IS NULL 	OR residence_type = '' OR
    	smoking_status		IS NULL 	OR smoking_status = '';

SELECT percentile_cont(0.5) WITHIN GROUP (ORDER BY bmi) AS median_bmi
FROM stroke_stages;


--update tabel bmi 
with bmi_stat as(
	select round(
		percentile_cont(0.5)within group (order by bmi)::numeric,
		1
	)as median_bmi
	from stroke_stages ss 
	where bmi is not null	
)
update stroke_stages 
set bmi = (select median_bmi from bmi_stat)
where bmi is null


update stroke_stages 
set work_type = initcap(work_type) 

update stroke_stages 
set smoking_status = initcap(smoking_status) 

select * from stroke_stages ss 

--delete gender other--
delete from stroke_stages 
where gender = 'Other'


--add new column
alter table stroke_stages 
add column age_segment varchar(30);
alter table stroke_stages 
add column bmi_category varchar(30);
alter table stroke_stages 
add column glucose_category varchar(30);
ALTER TABLE stroke_stages 
ADD COLUMN high_risk_flag INTEGER;



----update column age segmen,bmi category, glucose cateory--

update stroke_stages 
set
	age_segment = case 
		when age_patient <10 then 'Children' 
		when age_patient between 10 and 25 then 'Teenager'
		when age_patient between 26 and 58 then 'Mature'
		when age_patient between 58 and 65 then 'Senior'
		else 'Elderly'
	end,
	bmi_category = case
		when bmi <18.5 then 'Underweight'
		when bmi between 18.5 and 24.9 then 'Normal'
		when bmi between 25.0 and 29.9 then 'Overweight'
		else 'Obese'
	end,	
	glucose_category = case
        WHEN avg_glucose_level < 140 THEN 'Normal'
        WHEN avg_glucose_level BETWEEN 140 AND 199 THEN 'Prediabetic'
        ELSE 'Diabetic'
    END,
    high_risk_flag = CASE 
        WHEN hypertension = 1 AND heart_disease = 1 THEN 1
        ELSE 0		
	end;
	








































