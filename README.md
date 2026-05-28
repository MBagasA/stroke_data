# Stroke Patient Dashboard
# Welcome to my repository.

## Project Overview
This project analyzes stroke patient data to identify health and lifestyle factors that contribute to stroke cases.
By utilizing interactive visualizations in Power BI, this analysis helps monitor and understand patient behavior; this project also features medical indicators associated with stroke risks.
The project focuses on analyzing:
*	Age segmentation
*	Smoking lifestyle
*	Work type
*	Gender distribution
*	Marital status
*	Average glucose levels
*	Body Mass Index (BMI)
This dashboard aims to support healthcare decision-making and stroke prevention strategies.

## Problem
Stroke remains one of the most serious health issues globally. 
Healthcare organizations require better data-driven insights to identify high-risk groups and improve prevention programs.

## Objective
*	Analyze stroke cases based on age categories.
*	Identify smoking habits among patients.
*	Compare stroke cases by work type.
*	Analyze BMI and glucose trends.
*	Build an interactive healthcare dashboard.
*	Provide actionable recommendations for healthcare institutions.

## Dataset Information
* Column	Description
* gender	Patient's gender
* age	Patient's age
* hypertension	Hypertension status
* heart_disease	Heart disease status
* ever_marriage	Marital status
* work_type	Employment category
* smoking_status	Smoking status
* avg_glucose_level	Average glucose level
* bmi	Body Mass Index value
* stroke	Stroke diagnosis

## Data Cleaning Process
Before performing the analysis, we cleaned our data. Below are the steps we took:
*	Removing duplicate data
*	Checking for missing values
*	Handling null BMI data
*	Standardizing categorical values
*	Converting incorrect data types
*	Creating age segmentation categories
*	Validating data consistency

## Feature Engineering
* New Column	Description
* age_segmentation:	Categorizes patients into age groups such as Children, Teenagers, Adults, Seniors, and Elderly.
* bmi_category:	Classifies BMI into Underweight, Normal, Overweight, and Obese categories.
* glucose_category:	Categorizes glucose levels into Normal, Prediabetes, and High Glucose.
* high_risk:	Indicates whether a patient falls into a high-risk stroke category based on health indicators.

## Tools 
•	SQL
•	EXCEL
•	POWER BI

## Exploratory Data Analysis (EDA)
![alt text](https://github.com/MBagasA/stroke_data/blob/main/Dashboard.png?raw=true)
   ### 1. Total Stroke Cases by Age Segment
   Insight
   o	The elderly age group accounts for the largest number of stroke cases, 
      making up more than half of the total stroke patients.
   o	Stroke cases increase significantly with age, 
      showing a strong correlation between aging and stroke risk.
   o	Extremely low stroke cases appear in children and teenagers,
      indicating that strokes are much more common in older populations.
   o	The adult and senior age groups already show a substantial risk of stroke,
      meaning prevention must begin before old age.
   o	The aging population could increase the future healthcare burden,
      related to stroke treatment and rehabilitation.
   Recommendation
   o	Healthcare services should prioritize stroke prevention programs focused on the elderly.
   o	Create programs to conduct routine screenings for individuals over 40 years old.
   o	Enhance awareness campaigns regarding stroke symptoms among the elderly.
   o	Develop community-based healthy aging programs.
   o	Design activities that can increase physical activity among the elderly.
   
   ### 2. Smoking Lifestyle and Stroke Risk
   Insight
   o	Patients with a history of smoking still contribute significantly to the number of stroke sufferers.
   o	Former smokers retain a substantial risk of stroke even after quitting.
   o	The "Unknown" smoking category is relatively large,
      indicating incomplete healthcare data collection.
   o	Smoking behavior may contribute indirectly to other health issues, 
      such as hypertension and heart disease.
   o	Lifestyle-related factors appear to play a critical role in the occurrence of strokes.
   Recommendation
   o	Implement educational programs on the dangers of smoking.
   o	Improve the data collection process for patient lifestyles.
   o	Provide routine cardiovascular check-ups for smokers and former smokers.
   o	Promote healthy lifestyle campaigns through digital healthcare platforms.
   o	Establish programs in workplaces and public facilities to adopt smoke-free environments.

   ### 3.  Total Stroke Cases by Work Type
   Insight
   o	Private sector workers have the highest number of stroke cases.
   o	Job-related stress and a sedentary lifestyle may contribute to stroke risk.
   o	Self-employed workers also show relatively high stroke cases, 
      potentially due to irregular working patterns.
   o	Government employees show lower stroke cases compared to private sector employees.
   o	Differences in workplace lifestyles can influence healthcare outcomes.
   Recomendation
   o	Companies should establish health programs for employees.
   o	Provide counseling to employees to encourage taking regular breaks.
   o	Offer support to employees regarding stress management and mental health.
   o	Promote a healthier working environment.
   o	Create periodic health screening programs for employees.

   ### 4. Gender and Marital Status Analysis
   Insight
   o	Female patients show slightly higher stroke cases than male patients.
   o	Married individuals dominate stroke cases.
   o	Responsibility factors, lifestyle, 
      and stress levels may influence the health conditions of married individuals.
   o	Gender-based healthcare analysis can help improve prevention strategies.
   o	Social and family factors can contribute indirectly to health outcomes.
   Recomendation
   o	Provide gender-specific health awareness campaigns.
   o	Encourage family-based health monitoring programs.
   o	Promote mental health awareness among married adults.
   o	Improve accessibility to preventive healthcare services.
   o	Conduct a deeper analysis of stroke risk factors related to gender.

   ### 5. Health Metrics Analysis
   Insight
   o	The average glucose level in stroke patients is relatively high.
   o	The average BMI shows a tendency toward obesity among patients.
   o	Obesity and high glucose levels are strong indicators associated with stroke risk.
   o	Poor lifestyle and eating habits can contribute to unhealthy health metrics.
   o	Preventive health monitoring is essential for high-risk patients.
   Recommendation
   o	Promote healthy diet programs.
   o	Implement nutritional quality labels on food and beverage packaging.
   o	Conduct routine blood sugar and blood pressure screenings.
   o	Enhance obesity prevention campaigns.
   o	Provide fitness and nutrition education programs.
   o	Develop early detection systems for high-risk patients.

   ### Conclusion
   This project demonstrates how healthcare data can be transformed into meaningful insights using Power BI 
   and data analytics techniques.The analysis reveals that age, smoking habits, 
   obesity, glucose levels, lifestyle, and stress levels are critical factors associated with stroke cases. 
   By leveraging interactive dashboards, healthcare policymakers can better support prevention strategies,
   improve awareness programs, and enhance decision-making processes.










   





