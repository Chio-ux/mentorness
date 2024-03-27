

# Indian Agriculture Analysis (1966-2017)
## Dashboard link: https://app.powerbi.com/view?r=eyJrIjoiNjE5OGY3Y2YtZDBiMC00M2MzLWI0OGUtMzBhODNhNjk3YjQ3IiwidCI6ImRmODY3OWNkLWE4MGUtNDVkOC05OWFjLWM4M2VkN2ZmOTVhMCJ9



## Problem Statement

This internship project aims to conduct a comprehensive analysis of Indian agriculture, focusing on district-wise and year-wise data. The dataset provides detailed information on various crops, their areas, production, and yields across different districts and years. The goal is to leverage Power BI to create interactive visualizations that uncover trends, patterns, and disparities in agricultural practices, enabling stakeholders to make informed decisions for sustainable farming and resource allocation.

### Overview of the dataset
The dataset consist of several columns each representing state, district, year (1966-2017), and different crops each having columns for production, yield and area.




### Steps followed 

- Step 1 : Load data into Power BI Desktop, dataset is a csv file.
- Step 2 : Open power query editor & in view tab under Data preview section, check "column distribution", "column quality" & "column profile" options.
- Step 3 : Also since by default, profile will be opened only for 1000 rows so you need to select "column profiling based on entire dataset".
- Step 4 : It was observed that none of the columns had errors.
- Step 5 : New measures were created to aid in the analysis. Measures like average yield, total production and area, average kharif and rabi yield. Kharif and rabi represents the type of seasons in India. 
Three dashboards were created or this analysis.
 


### Project Objectives:
 
1. Crop-specific Analysis:
 - Analyze the trends in the cultivation of major crops, including rice, wheat, and pulses, focusing on 
   changes in area, production, and yield.
2. Regional Disparities:
 - Identify disparities and variations in agricultural practices and outcomes across different districts and 
   states.
3. Seasonal Patterns:
 - Explore seasonal patterns in crop cultivation, considering kharif and rabi seasons.
4. Fruits and Vegetables Analysis:
 - Analyze the cultivation trends of fruits, vegetables, and their overall contribution to agricultural practices.
5. Sustainable Farming Insights:
 - Derive insights that can contribute to promoting sustainable farming practices and optimizing resource 
   allocation.

### Observations
1. Staple crops like rice, wheat and pulses had flunctuations in yield, production and area across the years with highest yiel for all crops in 2017.

Rice, wheat and pulse perormnce dashboard
![rice, wheat, pulse](https://github.com/Chio-ux/project/assets/150048164/1324ea44-104b-4145-ad66-fb545b44e4ae)

2. The second dashboard shows the perormance of sorghum during kharif and rabi season, and the area used for the cultivation of vegetables and fruits. It was observed that sorghum performed better during kharif season compared to rabi. Vegetables were cultivated more compared to fruits because more areas were used or vegetables.

![kharif](https://github.com/Chio-ux/project/assets/150048164/6d879f77-0663-47ba-9362-ed0b27220f7f)

3. The third dashboard shows the perormance of other crops apart rom rice, wheat and pulses. The blue colour gradient is used to identify those with high or low yield.

![others](https://github.com/Chio-ux/project/assets/150048164/b17cc7a2-3459-4663-b3cc-6ba692fea293)

### Conclusion and recommendations:

In conclusion, the analysis of Indian agriculture from 1966 to 2017 reveals significant fluctuations in the performance of key crops such as rice, wheat, and pulses. These fluctuations underscore the need for proactive measures to stabilize crop production and ensure food security.

Additionally, the preference for vegetable cultivation over fruits highlights evolving market dynamics and changing consumer preferences. Encouraging fruit cultivation alongside staple crops can foster agricultural diversity and resilience.

Furthermore, the observed differences in sorghum yield between kharif and rabi seasons call for deeper investigations into seasonal agronomic factors. By addressing these challenges and implementing targeted recommendations, India can enhance its agricultural sustainability, improve farmers' livelihoods, and meet the growing food demands of its population.

